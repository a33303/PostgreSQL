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
	tyrespecifications.spectype,
	carmodels.vendor AS carvendor,
	carmodels.model AS carmodel
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN tyres_in_stock 
		LEFT JOIN tyrespecifications 
			INNER JOIN carmodels 
			ON carmodels.id = tyrespecifications.carmodel
		ON tyres_in_stock.tyrespecification_id = tyrespecifications.id
	ON orders.tyres_id = tyres_in_stock.id
ORDER BY client_id;	
	
-- Запрос на построение заказа по дискам
SELECT
	client_id,
	users.first_name,
	users.last_name,
	wheelspecifications.spectype,
	carmodels.vendor AS carvendor,
	carmodels.model AS carmodel,
	wheels_in_stock.brand,
	wheels_in_stock.model,
	wheels_in_stock.width,
	wheels_in_stock.diameter,
	carmodels.lz, 
	carmodels.pcd,
	wheels_in_stock.et,
	carmodels.dia,
	carmodels.bolt
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN wheels_in_stock 
		INNER JOIN wheelspecifications 
			INNER JOIN carmodels 
			ON carmodels.id = wheelspecifications.carmodel
		ON wheels_in_stock.wheelspecifications_id = wheelspecifications.id 
	ON orders.wheels_id = wheels_in_stock.id
ORDER BY client_id;
