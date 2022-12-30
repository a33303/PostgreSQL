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

-- Вывод анализа
/*
QUERY PLAN
Sort  (cost=41.27..41.52 rows=100 width=74) (actual time=1.339..1.348 rows=100 loops=1)
  Sort Key: orders.client_id
  Sort Method: quicksort  Memory: 36kB
  ->  Hash Left Join  (cost=22.43..37.95 rows=100 width=74) (actual time=0.995..1.296 rows=100 loops=1)
        Hash Cond: (orders.client_id = clients.user_id)
        ->  Hash Right Join  (cost=12.65..26.80 rows=100 width=62) (actual time=0.553..0.820 rows=100 loops=1)
              Hash Cond: (tyrespecifications.id = tyres_in_stock.tyrespecification_id)
              ->  Hash Join  (cost=4.88..16.17 rows=495 width=23) (actual time=0.052..0.249 rows=495 loops=1)
                    Hash Cond: (tyrespecifications.carmodel = carmodels.id)
                    ->  Seq Scan on tyrespecifications  (cost=0.00..9.95 rows=495 width=18) (actual time=0.003..0.058 rows=495 loops=1)
                    ->  Hash  (cost=3.28..3.28 rows=128 width=13) (actual time=0.041..0.042 rows=128 loops=1)
                          Buckets: 1024  Batches: 1  Memory Usage: 15kB
                          ->  Seq Scan on carmodels  (cost=0.00..3.28 rows=128 width=13) (actual time=0.003..0.022 rows=128 loops=1)
              ->  Hash  (cost=6.52..6.52 rows=100 width=47) (actual time=0.496..0.497 rows=100 loops=1)
                    Buckets: 1024  Batches: 1  Memory Usage: 16kB
                    ->  Hash Left Join  (cost=4.25..6.52 rows=100 width=47) (actual time=0.436..0.476 rows=100 loops=1)
                          Hash Cond: (orders.tyres_id = tyres_in_stock.id)
                          ->  Seq Scan on orders  (cost=0.00..2.00 rows=100 width=8) (actual time=0.384..0.391 rows=100 loops=1)
                          ->  Hash  (cost=3.00..3.00 rows=100 width=47) (actual time=0.038..0.040 rows=100 loops=1)
                                Buckets: 1024  Batches: 1  Memory Usage: 17kB
                                ->  Seq Scan on tyres_in_stock  (cost=0.00..3.00 rows=100 width=47) (actual time=0.004..0.015 rows=100 loops=1)
        ->  Hash  (cost=8.52..8.52 rows=100 width=16) (actual time=0.435..0.436 rows=100 loops=1)
              Buckets: 1024  Batches: 1  Memory Usage: 13kB
              ->  Hash Join  (cost=4.25..8.52 rows=100 width=16) (actual time=0.041..0.417 rows=100 loops=1)
                    Hash Cond: (clients.user_id = users.id)
                    ->  Seq Scan on clients  (cost=0.00..4.00 rows=100 width=4) (actual time=0.003..0.354 rows=100 loops=1)
                    ->  Hash  (cost=3.00..3.00 rows=100 width=16) (actual time=0.033..0.033 rows=100 loops=1)
                          Buckets: 1024  Batches: 1  Memory Usage: 13kB
                          ->  Seq Scan on users  (cost=0.00..3.00 rows=100 width=16) (actual time=0.003..0.017 rows=100 loops=1)
Planning Time: 326.444 ms
Execution Time: 1.460 ms
*/

-- Построение запроса
/*
	Planning Time: 326.444 ms
	Execution Time: 1.460 ms
*/

-- Проверим, какие индексы созданы для таблиц

SELECT indexname FROM pg_indexes WHERE tablename = 'clients';
SELECT indexname FROM pg_indexes WHERE tablename = 'users';
SELECT indexname FROM pg_indexes WHERE tablename = 'tyres_in_stock';
SELECT indexname FROM pg_indexes WHERE tablename = 'tyrespecifications';
SELECT indexname FROM pg_indexes WHERE tablename = 'carmodels';

-- Ключи связей имеются + система не считывает индексы из-за маленького количество данных.
-- Вводим принуждающий режим.

SET enable_seqscan TO OFF;

-- Вывод анализа c индексами
/*
QUERY PLAN
Merge Left Join  (cost=10000000059.05..10000000092.86 rows=100 width=74) (actual time=202.320..202.450 rows=100 loops=1)
  Merge Cond: (orders.client_id = clients.user_id)
  ->  Sort  (cost=10000000058.77..10000000059.02 rows=100 width=62) (actual time=202.295..202.303 rows=100 loops=1)
        Sort Key: orders.client_id
        Sort Method: quicksort  Memory: 34kB
        ->  Hash Right Join  (cost=10000000021.64..10000000055.45 rows=100 width=62) (actual time=201.996..202.272 rows=100 loops=1)
              Hash Cond: (tyres_in_stock.id = orders.tyres_id)
              ->  Merge Right Join  (cost=18.39..50.65 rows=100 width=62) (actual time=0.082..0.315 rows=100 loops=1)
                    Merge Cond: (tyrespecifications.id = tyres_in_stock.tyrespecification_id)
                    ->  Nested Loop  (cost=0.43..68.72 rows=495 width=23) (actual time=0.029..0.210 rows=220 loops=1)
                          ->  Index Scan using tyrespecifications_pkey on tyrespecifications  (cost=0.27..31.70 rows=495 width=18) (actual time=0.012..0.040 rows=220 loops=1)
                          ->  Memoize  (cost=0.15..0.20 rows=1 width=13) (actual time=0.000..0.000 rows=1 loops=220)
                                Cache Key: tyrespecifications.carmodel
                                Cache Mode: logical
                                Hits: 150  Misses: 70  Evictions: 0  Overflows: 0  Memory Usage: 8kB
                                ->  Index Scan using carmodels_pkey on carmodels  (cost=0.14..0.19 rows=1 width=13) (actual time=0.001..0.001 rows=1 loops=70)
                                      Index Cond: (id = tyrespecifications.carmodel)
                    ->  Sort  (cost=17.96..18.21 rows=100 width=47) (actual time=0.046..0.052 rows=100 loops=1)
                          Sort Key: tyres_in_stock.tyrespecification_id
                          Sort Method: quicksort  Memory: 33kB
                          ->  Index Scan using tyres_in_stock_pkey on tyres_in_stock  (cost=0.14..14.64 rows=100 width=47) (actual time=0.006..0.023 rows=100 loops=1)
              ->  Hash  (cost=10000000002.00..10000000002.00 rows=100 width=8) (actual time=201.906..201.906 rows=100 loops=1)
                    Buckets: 1024  Batches: 1  Memory Usage: 12kB
                    ->  Seq Scan on orders  (cost=10000000000.00..10000000002.00 rows=100 width=8) (actual time=201.866..201.879 rows=100 loops=1)
  ->  Materialize  (cost=0.29..32.34 rows=100 width=16) (actual time=0.017..0.102 rows=100 loops=1)
        ->  Merge Join  (cost=0.29..32.09 rows=100 width=16) (actual time=0.016..0.078 rows=100 loops=1)
              Merge Cond: (clients.user_id = users.id)
              ->  Index Only Scan using clients_pkey on clients  (cost=0.14..15.95 rows=100 width=4) (actual time=0.006..0.024 rows=100 loops=1)
                    Heap Fetches: 100
              ->  Index Scan using users_pkey on users  (cost=0.14..14.64 rows=100 width=16) (actual time=0.003..0.017 rows=100 loops=1)
Planning Time: 0.294 ms
JIT:
  Functions: 38
  Options: Inlining true, Optimization true, Expressions true, Deforming true
  Timing: Generation 1.332 ms, Inlining 3.590 ms, Optimization 118.856 ms, Emission 79.440 ms, Total 203.218 ms
Execution Time: 203.873 ms
*/

-- Построение запроса с учётом индексов составила 
/*
	Planning Time: 0.294 ms
	Execution Time: 203.873 ms
*/

-- С учетом загрузки запроса и для его оптимизации применим табличное выражение
WITH tyres_stock AS (
	SELECT
	tyres_in_stock.id,
	tyres_in_stock.brand,
	tyres_in_stock.model,
	tyres_in_stock.width,
	tyres_in_stock.profile,
	tyres_in_stock.diameter,
	tyres_in_stock.season,
	tyrespecifications.spectype,
	carmodels.vendor AS carvendor,
	carmodels.model AS carmodel
	FROM tyres_in_stock
	LEFT JOIN tyrespecifications 
		INNER JOIN carmodels 
		ON carmodels.id = tyrespecifications.carmodel
	ON tyres_in_stock.tyrespecification_id = tyrespecifications.id
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
	tyres_stock.spectype,
	tyres_stock.carvendor,
	tyres_stock.carmodel
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN tyres_stock
	ON orders.tyres_id = tyres_stock.id;
	
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
	tyrespecifications.spectype,
	carmodels.vendor AS carvendor,
	carmodels.model AS carmodel
	FROM tyres_in_stock
	LEFT JOIN tyrespecifications 
		INNER JOIN carmodels 
		ON carmodels.id = tyrespecifications.carmodel
	ON tyres_in_stock.tyrespecification_id = tyrespecifications.id
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
	tyres_stock.spectype,
	tyres_stock.carvendor,
	tyres_stock.carmodel
FROM orders
	LEFT JOIN clients 
		INNER JOIN users 
		ON users.id = clients.user_id
	ON orders.client_id = clients.user_id
	LEFT JOIN tyres_stock
	ON orders.tyres_id = tyres_stock.id;	
/*
QUERY PLAN
Hash Left Join  (cost=10000000054.98..10000000090.16 rows=100 width=74) (actual time=170.644..170.921 rows=100 loops=1)
  Hash Cond: (orders.client_id = clients.user_id)
  ->  Hash Right Join  (cost=10000000021.64..10000000055.45 rows=100 width=62) (actual time=170.544..170.801 rows=100 loops=1)
        Hash Cond: (tyres_in_stock.id = orders.tyres_id)
        ->  Merge Right Join  (cost=18.39..50.65 rows=100 width=62) (actual time=0.079..0.310 rows=100 loops=1)
              Merge Cond: (tyrespecifications.id = tyres_in_stock.tyrespecification_id)
              ->  Nested Loop  (cost=0.43..68.72 rows=495 width=23) (actual time=0.028..0.207 rows=220 loops=1)
                    ->  Index Scan using tyrespecifications_pkey on tyrespecifications  (cost=0.27..31.70 rows=495 width=18) (actual time=0.012..0.039 rows=220 loops=1)
                    ->  Memoize  (cost=0.15..0.20 rows=1 width=13) (actual time=0.000..0.000 rows=1 loops=220)
                          Cache Key: tyrespecifications.carmodel
                          Cache Mode: logical
                          Hits: 150  Misses: 70  Evictions: 0  Overflows: 0  Memory Usage: 8kB
                          ->  Index Scan using carmodels_pkey on carmodels  (cost=0.14..0.19 rows=1 width=13) (actual time=0.001..0.001 rows=1 loops=70)
                                Index Cond: (id = tyrespecifications.carmodel)
              ->  Sort  (cost=17.96..18.21 rows=100 width=47) (actual time=0.044..0.049 rows=100 loops=1)
                    Sort Key: tyres_in_stock.tyrespecification_id
                    Sort Method: quicksort  Memory: 33kB
                    ->  Index Scan using tyres_in_stock_pkey on tyres_in_stock  (cost=0.14..14.64 rows=100 width=47) (actual time=0.005..0.021 rows=100 loops=1)
        ->  Hash  (cost=10000000002.00..10000000002.00 rows=100 width=8) (actual time=170.440..170.441 rows=100 loops=1)
              Buckets: 1024  Batches: 1  Memory Usage: 12kB
              ->  Seq Scan on orders  (cost=10000000000.00..10000000002.00 rows=100 width=8) (actual time=170.402..170.414 rows=100 loops=1)
  ->  Hash  (cost=32.09..32.09 rows=100 width=16) (actual time=0.090..0.091 rows=100 loops=1)
        Buckets: 1024  Batches: 1  Memory Usage: 13kB
        ->  Merge Join  (cost=0.29..32.09 rows=100 width=16) (actual time=0.016..0.074 rows=100 loops=1)
              Merge Cond: (clients.user_id = users.id)
              ->  Index Only Scan using clients_pkey on clients  (cost=0.14..15.95 rows=100 width=4) (actual time=0.006..0.023 rows=100 loops=1)
                    Heap Fetches: 100
              ->  Index Scan using users_pkey on users  (cost=0.14..14.64 rows=100 width=16) (actual time=0.003..0.015 rows=100 loops=1)
Planning Time: 0.338 ms
JIT:
  Functions: 37
  Options: Inlining true, Optimization true, Expressions true, Deforming true
  Timing: Generation 1.332 ms, Inlining 3.819 ms, Optimization 99.666 ms, Emission 66.951 ms, Total 171.768 ms
Execution Time: 172.362 ms
*/

-- Построение запроса с применением табличного выражения и индексами
/*
Planning Time: 0.338 ms
Execution Time: 172.362 ms
*/





-- Анализ через pg_stat_statements

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
         tyrespecifications.spectype,
                 +|
         carmodels.vendor AS carvendor,
                 +|
         carmodels.model AS carmodel
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
         LEFT JOIN tyrespecifications
                 +|
                 INNER JOIN carmodels
                 +|
                 ON carmodels.id = tyrespecifications.carmodel
                 +|
         ON tyres_in_stock.tyrespecification_id = tyrespecifications.id
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
         tyrespecifications.spectype,
                 +|
         carmodels.vendor AS carvendor,
                 +|
         carmodels.model AS carmodel
                 +|
         FROM tyres_in_stock
                 +|
         LEFT JOIN tyrespecifications
                 +|
                 INNER JOIN carmodels
                 +|
                 ON carmodels.id = tyrespecifications.carmodel
                 +|
         ON tyres_in_stock.tyrespecification_id = tyrespecifications.id
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
         tyres_stock.spectype,
                 +|
         tyres_stock.carvendor,
                 +|
         tyres_stock.carmodel
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