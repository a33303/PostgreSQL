-- 10 
/* 
	Для одного из запросов, созданных в пункте 6, провести оптимизацию.
    В качестве отчета приложить планы выполнения запроса, ваш анализ и показать действия, которые улучшили эффективность запроса.
*/
-- Оптимизация запроса на построение заказа по шинам
-- Исходный запрос
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

-- Проводим анализ на сколько запрос тяжелый
EXPLAIN ANALYZE SELECT
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
	ON clients.user_id = orders.client_id 
	LEFT JOIN tyres_in_stock 
		LEFT JOIN tyre_specifications 
			INNER JOIN car_models 
			ON car_models.id = tyre_specifications.car_model_id
		ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
	ON orders.tyres_in_stock_id = tyres_in_stock.id
ORDER BY client_id;	

-- Проверим, какие индексы созданы для таблиц

SELECT indexname FROM pg_indexes WHERE tablename = 'clients';
SELECT indexname FROM pg_indexes WHERE tablename = 'users';
SELECT indexname FROM pg_indexes WHERE tablename = 'tyres_in_stock';
SELECT indexname FROM pg_indexes WHERE tablename = 'tyre_specifications';
SELECT indexname FROM pg_indexes WHERE tablename = 'car_models';

-- Создаем уникальные индексы

CREATE UNIQUE INDEX clients_user_id_uq ON clients (user_id);
CREATE UNIQUE INDEX orders_client_id_uq ON orders (client_id);
CREATE UNIQUE INDEX tyres_in_stock_tyre_specification_id_uq ON tyres_in_stock (tyre_specification_id);

-- Ключи связей имеются + система не считывает индексы из-за маленького количество данных.
-- Вводим принуждающий режим.

SET enable_seqscan TO OFF;


-- С учетом загрузки запроса и для его оптимизации применим табличное выражение + уникальные индексы
WITH tyres_stock AS (
	SELECT
	tyres_in_stock.id,
	tyres_in_stock.brand,
	tyres_in_stock.model,
	tyres_in_stock.width,
	tyres_in_stock.profile,
	tyres_in_stock.diameter,
	tyres_in_stock.season,
	tyre_specifications.spec_type,
	car_models.vendor AS car_vendor,
	car_models.model AS car_model
	FROM tyres_in_stock
	LEFT JOIN tyre_specifications 
		INNER JOIN car_models 
		ON car_models.id = tyre_specifications.car_model_id
	ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
)
SELECT
	client_id,
	users.first_name,
	users.last_name,
	tyres_stock.brand,
	tyres_stock.model,
	tyres_stock.width,
	tyres_stock.profile,
	tyres_stock.diameter,
	tyres_stock.season,
	tyres_stock.spec_type,
	tyres_stock.car_vendor,
	tyres_stock.car_model
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN tyres_stock
	ON orders.tyres_in_stock_id = tyres_stock.id;
	
-- Проведем его анализ
EXPLAIN ANALYZE WITH tyres_stock AS (
	SELECT
	tyres_in_stock.id,
	tyres_in_stock.brand,
	tyres_in_stock.model,
	tyres_in_stock.width,
	tyres_in_stock.profile,
	tyres_in_stock.diameter,
	tyres_in_stock.season,
	tyre_specifications.spec_type,
	car_models.vendor AS car_vendor,
	car_models.model AS car_model
	FROM tyres_in_stock
	LEFT JOIN tyre_specifications 
		INNER JOIN car_models 
		ON car_models.id = tyre_specifications.car_model_id
	ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
)
SELECT
	client_id,
	users.first_name,
	users.last_name,
	tyres_stock.brand,
	tyres_stock.model,
	tyres_stock.width,
	tyres_stock.profile,
	tyres_stock.diameter,
	tyres_stock.season,
	tyres_stock.spec_type,
	tyres_stock.car_vendor,
	tyres_stock.car_model
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN tyres_stock
	ON orders.tyres_in_stock_id = tyres_stock.id;



-- ИТОГ работы по оптимизации

-- Вывод EXPLAIN ANALYZE без считывания индексорв
/*
QUERY PLAN
	Planning Time: 326.444 ms
	Execution Time: 1.460 ms
*/

-- Построение SELECT без считывания индексорв
/*
	Planning Time: 326.444 ms
	Execution Time: 1.460 ms
*/

	
-- Вывод EXPLAIN ANALYZE c считыванием индексов
/*
Planning Time: 0.294 ms
Execution Time: 203.873 ms
*/

-- Построение SELECT c считыванием индексов  
/*
	Planning Time: 0.294 ms
	Execution Time: 203.873 ms
*/	
	
	
	
-- Построение SELECT с применением уникальных индексов
/*
Planning Time: 0.377 ms
Execution Time: 0.609 ms
*/	
	

-- Построение SELECT с применением табличного выражения и уникальными индексами
/*
Planning Time: 0.522 ms
Execution Time: 0.595 ms
*/



-- Анализ через pg_stat_statements до построения уникальных индексов

/*

*** Начальный запрос ***

EXPLAIN ANALYZE SELECT
SELECT
                 +|    199.69996500000002
         client_id,
                 +|
         users.first_name,
                 +|
         users.last_name,
                 +|
         tyres_in_stock.brand,
                 +|
         tyres_in_stock.model,
                 +|
         tyres_in_stock.width,
                 +|
         tyres_in_stock.profile,
                 +|
         tyres_in_stock.diameter,
                 +|
         tyres_in_stock.season,
                 +|
         tyre_specifications.spec_type,
                 +|
         car_models.vendor AS car_vendor,
                 +|
         car_models.model AS car_model
                 +|
 FROM orders
                 +|
         LEFT JOIN clients
                 +|
                 INNER JOIN users
                 +|
                 ON users.id = clients.user_id
                 +|
         ON orders.client_id = clients.user_id
                 +|
         LEFT JOIN tyres_in_stock
                 +|
         LEFT JOIN tyre_specifications
                 +|
                 INNER JOIN car_models
                 +|
                 ON carmodels.id = tyre_specifications.car_model_id
                 +|
         ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
                 +|
         ON orders.tyres_id = tyres_in_stock.id
                 +|
 ORDER BY client_id
 
 
 -- Запрос после оптимизации
 
 WITH tyres_stock AS (
                 +|            179.407297
         SELECT
                 +|
         tyres_in_stock.id,
                 +|
         tyres_in_stock.brand,
                 +|
         tyres_in_stock.model,
                 +|
         tyres_in_stock.width,
                 +|
         tyres_in_stock.profile,
                 +|
         tyres_in_stock.diameter,
                 +|
         tyres_in_stock.season,
                 +|
         tyre_specifications.spec_type,
                 +|
         car_models.vendor AS car_vendor,
                 +|
         car_models.model AS car_model
                 +|
         FROM tyres_in_stock
                 +|
         LEFT JOIN tyre_specifications
                 +|
                 INNER JOIN car_models
                 +|
                 ON car_models.id = tyre_specifications.car_model_id
                 +|
         ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
                 +|
 )
                 +|
 SELECT
                 +|
         client_id,
                 +|
         users.first_name,
                 +|
         users.last_name,
                 +|
         tyres_stock.brand,
                 +|
         tyres_stock.model,
                 +|
         tyres_stock.width,
                 +|
         tyres_stock.profile,
                 +|
         tyres_stock.diameter,
                 +|
         tyres_stock.season,
                 +|
         tyres_stock.spec_type,
                 +|
         tyres_stock.car_vendor,
                 +|
         tyres_stock.car_model
                 +|
 FROM orders
                 +|
         LEFT JOIN clients
                 +|
                 INNER JOIN users
                 +|
                 ON users.id = clients.user_id
                 +|
         ON orders.client_id = clients.user_id
                 +|
         LEFT JOIN tyres_stock
                 +|
         ON orders.tyres_id = tyres_stock.id
 */

-- Анализ через pg_stat_statements после построения уникальных индексов

/*

*** Начальный запрос ***

EXPLAIN ANALYZE SELECT
SELECT
                 +|    0.69996500000002
         client_id,
                 +|
         users.first_name,
                 +|
         users.last_name,
                 +|
         tyres_in_stock.brand,
                 +|
         tyres_in_stock.model,
                 +|
         tyres_in_stock.width,
                 +|
         tyres_in_stock.profile,
                 +|
         tyres_in_stock.diameter,
                 +|
         tyres_in_stock.season,
                 +|
         tyre_specifications.spec_type,
                 +|
         car_models.vendor AS car_vendor,
                 +|
         car_models.model AS car_model
                 +|
 FROM orders
                 +|
         LEFT JOIN clients
                 +|
                 INNER JOIN users
                 +|
                 ON users.id = clients.user_id
                 +|
         ON orders.client_id = clients.user_id
                 +|
         LEFT JOIN tyres_in_stock
                 +|
         LEFT JOIN tyre_specifications
                 +|
                 INNER JOIN car_models
                 +|
                 ON carmodels.id = tyre_specifications.car_model_id
                 +|
         ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
                 +|
         ON orders.tyres_id = tyres_in_stock.id
                 +|
 ORDER BY client_id
 
 
 -- Запрос после оптимизации
 
 WITH tyres_stock AS (
                 +|            0.407297
         SELECT
                 +|
         tyres_in_stock.id,
                 +|
         tyres_in_stock.brand,
                 +|
         tyres_in_stock.model,
                 +|
         tyres_in_stock.width,
                 +|
         tyres_in_stock.profile,
                 +|
         tyres_in_stock.diameter,
                 +|
         tyres_in_stock.season,
                 +|
         tyre_specifications.spec_type,
                 +|
         car_models.vendor AS car_vendor,
                 +|
         car_models.model AS car_model
                 +|
         FROM tyres_in_stock
                 +|
         LEFT JOIN tyre_specifications
                 +|
                 INNER JOIN car_models
                 +|
                 ON car_models.id = tyre_specifications.car_model_id
                 +|
         ON tyres_in_stock.tyre_specification_id = tyre_specifications.id
                 +|
 )
                 +|
 SELECT
                 +|
         client_id,
                 +|
         users.first_name,
                 +|
         users.last_name,
                 +|
         tyres_stock.brand,
                 +|
         tyres_stock.model,
                 +|
         tyres_stock.width,
                 +|
         tyres_stock.profile,
                 +|
         tyres_stock.diameter,
                 +|
         tyres_stock.season,
                 +|
         tyres_stock.spec_type,
                 +|
         tyres_stock.car_vendor,
                 +|
         tyres_stock.car_model
                 +|
 FROM orders
                 +|
         LEFT JOIN clients
                 +|
                 INNER JOIN users
                 +|
                 ON users.id = clients.user_id
                 +|
         ON orders.client_id = clients.user_id
                 +|
         LEFT JOIN tyres_stock
                 +|
         ON orders.tyres_id = tyres_stock.id
 */