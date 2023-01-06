-- Внешние ключи для таблицы tyrespecifications
ALTER TABLE tyre_specifications
ADD CONSTRAINT tyrespecifications_carmodel_fk
FOREIGN KEY (carmodel)
REFERENCES car_models (id)
ON DELETE CASCADE;

ALTER TABLE tyre_specifications
ADD CONSTRAINT tyrespecifications_spectype_fk
FOREIGN KEY (spectype)
REFERENCES specificationtype (spec_type)
ON DELETE CASCADE;


-- Внешние ключи для таблицы wheelspecifications
ALTER TABLE wheel_specifications 
ADD CONSTRAINT wheelspecifications_carmodel_fk
FOREIGN KEY (carmodel)
REFERENCES car_models (id)
ON DELETE CASCADE;

ALTER TABLE wheel_specifications
ADD CONSTRAINT wheelspecifications_spectype_fk
FOREIGN KEY (spectype)
REFERENCES specificationtype (spec_type)
ON DELETE CASCADE;


-- Внешние ключи для таблицы clients
ALTER TABLE clients
ADD CONSTRAINT client_user_id_fk
FOREIGN KEY (user_id)
REFERENCES users (id);

ALTER TABLE clients
ADD CONSTRAINT client_carmodel_id_fk
FOREIGN KEY (carmodel_id)
REFERENCES car_models (id);

INSERT INTO clients (user_id)
SELECT id FROM users;


-- Внешние ключи для таблицы tyres_in_stock 
ALTER TABLE tyres_in_stock 
ADD CONSTRAINT tyres_in_tyre_specification_id_fk
FOREIGN KEY (tyre_specification_id)
REFERENCES tyre_specifications (id)
ON DELETE CASCADE;


-- Внешние ключи для таблицы wheels_in_stock
ALTER TABLE wheels_in_stock 
ADD CONSTRAINT wheels_in_wheel_specification_id_fk
FOREIGN KEY (wheel_specifications_id)
REFERENCES wheel_specifications (id)
ON DELETE CASCADE;


-- Внешние ключи для таблицы orders
ALTER TABLE orders 
ADD CONSTRAINT orders_client_id_fk
FOREIGN KEY (client_id)
REFERENCES clients (user_id)
ON DELETE CASCADE;

ALTER TABLE orders 
ADD CONSTRAINT orders_tyres_in_stock_id_fk
FOREIGN KEY (tyres_in_stock_id)
REFERENCES tyres_in_stock (id)
ON DELETE CASCADE;

ALTER TABLE orders 
ADD CONSTRAINT orders_wheels_in_stock_id_fk
FOREIGN KEY (wheels_in_stock_id)
REFERENCES wheels_in_stock (id)
ON DELETE CASCADE;

ALTER TABLE orders 
ADD CONSTRAINT orders_logistic_id_fk
FOREIGN KEY (logistic_id)
REFERENCES logistics (id)
ON DELETE CASCADE;


-- Внешние ключи для таблицы logistics
ALTER TABLE logistics 
ADD CONSTRAINT logistics_order_id_fk
FOREIGN KEY (order_id)
REFERENCES orders (id)
ON DELETE CASCADE;

ALTER TABLE logistics 
ADD CONSTRAINT logistics_driver_id_fk
FOREIGN KEY (driver_id)
REFERENCES drivers (id)
ON DELETE CASCADE;
