-- Создать два сложных (многотабличных) запроса с использованием коррелирующих вложенных запросов.
-- Запрос на построение заказа по шинам
SELECT
	client_id,
	(SELECT
		(SELECT first_name FROM users WHERE users.id = clients.user_id) as first_name
	FROM clients WHERE orders.client_id = clients.user_id)  as first_name,
	(SELECT
		(SELECT last_name from users WHERE users.id = clients.user_id) as last_name
	FROM clients WHERE orders.client_id = clients.user_id)  as last_name,
	(SELECT brand FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS brand,
	(SELECT model FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS model,
	(SELECT width FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS width,
	(SELECT profile FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS profile,
	(SELECT diameter FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS diameter,
	(SELECT season FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS season,
	(SELECT  
	 (SELECT spectype FROM tyrespecifications WHERE tyres_in_stock.tyrespecification_id = tyrespecifications.id) as spectype
	 FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS spectype,
	 (SELECT  
		 (SELECT 
		  	(SELECT vendor FROM carmodels WHERE carmodels.id = tyrespecifications.carmodel) AS vendor 
		  FROM tyrespecifications WHERE tyres_in_stock.tyrespecification_id = tyrespecifications.id) AS vendor
	 FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS carvendor,
	 (SELECT  
		 (SELECT 
		  	(SELECT model FROM carmodels WHERE carmodels.id = tyrespecifications.carmodel) AS model 
		  FROM tyrespecifications WHERE tyres_in_stock.tyrespecification_id = tyrespecifications.id) AS model
	 FROM tyres_in_stock WHERE orders.tyres_id = tyres_in_stock.id) AS carmodel
FROM orders;


-- Запрос на построение заказа по дискам
SELECT
	client_id,
	(SELECT
		(SELECT first_name FROM users WHERE users.id = clients.user_id) as first_name
	FROM clients WHERE orders.client_id = clients.user_id) as first_name,
	(SELECT
		(SELECT last_name from users WHERE users.id = clients.user_id) as last_name
	FROM clients WHERE orders.client_id = clients.user_id) as last_name,
	(SELECT  
		 (SELECT spectype FROM wheelspecifications WHERE wheels_in_stock.wheelspecifications_id = wheelspecifications.id) as spectype
	 FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS spectype,
	 (SELECT  
		 (SELECT 
		  	(SELECT vendor FROM carmodels WHERE carmodels.id = wheelspecifications.carmodel) AS vendor 
		  FROM wheelspecifications WHERE wheels_in_stock.wheelspecifications_id = wheelspecifications.id) AS vendor
	 FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS vendor,
	 (SELECT  
		 (SELECT 
		  	(SELECT model FROM carmodels WHERE carmodels.id = wheelspecifications.carmodel) AS model 
		  FROM wheelspecifications WHERE wheels_in_stock.wheelspecifications_id = wheelspecifications.id) AS model
	 FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS model, 
	(SELECT brand FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS brand,
	(SELECT model FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS model,
	(SELECT width FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS width,
	(SELECT diameter FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS diameter,
	 (SELECT  
		 (SELECT 
		  	(SELECT lz FROM carmodels WHERE carmodels.id = wheelspecifications.carmodel) AS lz 
		  FROM wheelspecifications WHERE wheels_in_stock.wheelspecifications_id = wheelspecifications.id) AS lz
	 FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS lz, 
	 (SELECT  
		 (SELECT 
		  	(SELECT pcd FROM carmodels WHERE carmodels.id = wheelspecifications.carmodel) AS et 
		  FROM wheelspecifications WHERE wheels_in_stock.wheelspecifications_id = wheelspecifications.id) AS et
	 FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS pcd,
	(SELECT et FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS et,
	 (SELECT  
		 (SELECT 
		  	(SELECT dia FROM carmodels WHERE carmodels.id = wheelspecifications.carmodel) AS dia 
		  FROM wheelspecifications WHERE wheels_in_stock.wheelspecifications_id = wheelspecifications.id) AS dia
	 FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS dia,
	 (SELECT  
		 (SELECT 
		  	(SELECT bolt FROM carmodels WHERE carmodels.id = wheelspecifications.carmodel) AS bolt 
		  FROM wheelspecifications WHERE wheels_in_stock.wheelspecifications_id = wheelspecifications.id) AS bolt
	 FROM wheels_in_stock WHERE orders.wheels_id = wheels_in_stock.id) AS bolt	 
FROM orders
ORDER BY client_id;
