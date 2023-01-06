-- Создать два представления, в основе которых лежат сложные запросы.
-- Представление доставки заказов
DROP VIEW logistic_order;

CREATE VIEW logistic_order AS
SELECT 
	order_id,
	users.id AS client_id,
	CONCAT(users.first_name || ' ' || users.last_name) AS client,
	CONCAT(tyres_in_stock.brand || ' ' || tyres_in_stock.model) AS order_tyres,
	CONCAT(wheels_in_stock.brand || ' ' || wheels_in_stock.model) AS order_wheels,
	CONCAT(drivers.first_name || ' ' || drivers.last_name) AS driver,
	drivers.phone AS driver_phone,
	drivers.car AS driver_car,
	date_trunc('hour', logistic_date) AS logistic_date
FROM logistics
	LEFT JOIN orders 
		LEFT JOIN clients 
			INNER JOIN users 
			ON users.id = clients.user_id
		ON orders.client_id = clients.user_id
		LEFT JOIN tyres_in_stock 
		ON orders.tyres_in_stock_id = tyres_in_stock.id
		LEFT JOIN wheels_in_stock 
			INNER JOIN wheel_specifications 
				INNER JOIN car_models 
				ON car_models.id = wheel_specifications.car_model_id
			ON wheels_in_stock.wheel_specifications_id = wheel_specifications.id 
		ON orders.wheels_in_stock_id = wheels_in_stock.id
	ON logistics.order_id = orders.id
	LEFT JOIN drivers 
	ON drivers.id = logistics.driver_id
ORDER BY order_id;

-- Представление проданного товара за указанный период
DROP VIEW logistic_orders_analyst;

CREATE VIEW logistic_orders_analyst AS
SELECT
	COUNT (tyres_in_stock_id) AS tyres_order,
	COUNT (wheels_in_stock_id) AS wheels_order,
	COUNT (logistic_id) AS logistic_order,
	COUNT (orders.id) AS total_order,
	to_char(logistic_date, 'YYYY') AS logistic_date
FROM logistics
	INNER JOIN orders
	ON orders.id = logistics.order_id
	WHERE logistic_date >= '2022-01-01' AND logistic_date <= '2023-01-01'
GROUP BY logistic_date;
