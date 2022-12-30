-- Создать пользовательскую функцию.
DROP PROCEDURE checks_wheels_order_completed;

CREATE OR REPLACE PROCEDURE checks_wheels_order_completed ()
LANGUAGE PLPGSQL AS
$$
DECLARE search_orders RECORD;
BEGIN
	FOR search_orders IN
		SELECT orders.wheels_id 
		FROM orders
		JOIN wheels_in_stock
		ON orders.wheels_id = wheels_in_stock.id
		 WHERE orders.wheels_id != wheels_in_stock.id
	LOOP
		UPDATE orders SET wheels_id = NULL WHERE id = search_orders.id;
	END LOOP;
	COMMIT;
END;
$$;

CALL checks_wheels_order_completed();

DROP PROCEDURE checks_tyres_order_completed;

CREATE OR REPLACE PROCEDURE checks_tyres_order_completed ()
LANGUAGE PLPGSQL AS
$$
DECLARE search_orders RECORD;
BEGIN
	FOR search_orders IN
		SELECT orders.tyres_id 
		FROM orders
		JOIN tyres_in_stock
		ON orders.tyres_id = tyres_in_stock.id
		 WHERE orders.tyres_id != tyres_in_stock.id
	LOOP
		UPDATE orders SET tyres_id = NULL WHERE id = search_orders.id;
	END LOOP;
	COMMIT;
END;
$$;

CALL checks_tyres_order_completed();