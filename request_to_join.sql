-- Создать два сложных запроса с использованием объединения JOIN и без использования подзапросов.
-- Запрос на построение заказа по шинам
SELECT
	client_id,
	users.first_name,
	users.last_name,
	tyres_in_stock.brand,
	tyres_in_stock.model,
	tyres_in_stock.width,
	tyres_in_stock.profile,
	tyres_in_stock.diameter,
	tyres_in_stock.season,
	tyre_specifications.spec_type,
	car_models.vendor AS car_vendor,
	car_models.model AS car_model
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN tyres_in_stock 
		LEFT JOIN tyre_specifications 
			INNER JOIN car_models 
			ON car_models.id = tyre_specifications.car_model_id
		ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
	ON orders.tyres_in_stock_id = tyres_in_stock.id
ORDER BY client_id;	
	
-- Запрос на построение заказа по дискам
SELECT
	client_id,
	users.first_name,
	users.last_name,
	wheel_specifications.spec_type,
	car_models.vendor AS car_vendor,
	car_models.model AS car_model,
	wheels_in_stock.brand,
	wheels_in_stock.model,
	wheels_in_stock.width,
	wheels_in_stock.diameter,
	car_models.lz, 
	car_models.pcd,
	wheels_in_stock.et,
	car_models.dia,
	car_models.bolt
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN wheels_in_stock 
		INNER JOIN wheel_specifications 
			INNER JOIN car_models 
			ON car_models.id = wheel_specifications.car_model_id
		ON wheels_in_stock.wheel_specifications_id = wheel_specifications.id 
	ON orders.wheels_in_stock_id = wheels_in_stock.id
ORDER BY client_id;
