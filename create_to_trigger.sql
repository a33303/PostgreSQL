-- Создать триггер.
DROP FUNCTION update_orders_tyres_id_trigger;

CREATE OR REPLACE FUNCTION update_orders_tyres_id_trigger()
RETURNS TRIGGER AS
$$
DECLARE real_tyres_id INTEGER;
BEGIN
    real_tyres_id := (SELECT tyres_in_stock.id FROM tyres_in_stock WHERE id = NEW.tyres_in_stock_id);
    IF NEW.tyres_in_stock_id IS NOT NULL AND NEW.tyres_in_stock.id != real_tyres_id THEN
        RAISE EXCEPTION 'Client with ID: % has no buy tyres from ID: %', NEW.tyres_in_stock.id, NEW.tyres_in_stock_id;
    END IF;
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS check_orders_tyres_on_update ON tyres_in_stock;
CREATE TRIGGER check_orders_tyres_on_update BEFORE UPDATE ON tyres_in_stock
    FOR EACH ROW
EXECUTE FUNCTION update_orders_tyres_id_trigger();

SELECT id FROM tyres_in_stock WHERE id = 31;
SELECT tyres_in_stock_id FROM orders WHERE tyres_in_stock_id  = 31;

UPDATE orders SET tyres_in_stock_id = 131 WHERE id = 32;   -- Получаем ошибку.
UPDATE orders SET tyres_in_stock_id = 31 WHERE id = 32;  -- Все ок.
