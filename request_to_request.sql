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
    (SELECT brand FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS brand,
    (SELECT model FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS model,
    (SELECT width FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS width,
    (SELECT profile FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS profile,
    (SELECT diameter FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS diameter,
    (SELECT season FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS season,
    (SELECT
         (SELECT spec_type FROM tyre_specifications WHERE tyres_in_stock.tyre_specification_id = tyre_specifications.id) as spec_type
     FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS spec_type,
    (SELECT
         (SELECT
              (SELECT vendor FROM car_models WHERE car_models.id = tyre_specifications.car_model_id) AS vendor
          FROM tyre_specifications WHERE tyres_in_stock.tyre_specification_id = tyre_specifications.id) AS vendor
     FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS car_vendor,
    (SELECT
         (SELECT
              (SELECT model FROM car_models WHERE car_models.id = tyre_specifications.car_model_id) AS model
          FROM tyre_specifications WHERE tyres_in_stock.tyre_specification_id = tyre_specifications.id) AS model
     FROM tyres_in_stock WHERE orders.tyres_in_stock_id = tyres_in_stock.id) AS car_model
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
         (SELECT spec_type FROM wheel_specifications WHERE wheels_in_stock.wheel_specifications_id = wheel_specifications.id) as spec_type
     FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS spec_type,
    (SELECT
         (SELECT
              (SELECT vendor FROM car_models WHERE car_models.id = wheel_specifications.car_model_id) AS vendor
          FROM wheel_specifications WHERE wheels_in_stock.wheel_specifications_id = wheel_specifications.id) AS vendor
     FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS vendor,
    (SELECT
         (SELECT
              (SELECT model FROM car_models WHERE car_models.id = wheel_specifications.car_model_id) AS model
          FROM wheel_specifications WHERE wheels_in_stock.wheel_specifications_id = wheel_specifications.id) AS model
     FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS model,
    (SELECT brand FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS brand,
    (SELECT model FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS model,
    (SELECT width FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS width,
    (SELECT diameter FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS diameter,
    (SELECT
         (SELECT
              (SELECT lz FROM car_models WHERE car_models.id = wheel_specifications.car_model_id) AS lz
          FROM wheel_specifications WHERE wheels_in_stock.wheel_specifications_id = wheel_specifications.id) AS lz
     FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS lz,
    (SELECT
         (SELECT
              (SELECT pcd FROM car_models WHERE car_models.id = wheel_specifications.car_model_id) AS et
          FROM wheel_specifications WHERE wheels_in_stock.wheel_specifications_id = wheel_specifications.id) AS et
     FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS pcd,
    (SELECT et FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS et,
    (SELECT
         (SELECT
              (SELECT dia FROM car_models WHERE car_models.id = wheel_specifications.car_model_id) AS dia
          FROM wheel_specifications WHERE wheels_in_stock.wheel_specifications_id = wheel_specifications.id) AS dia
     FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS dia,
    (SELECT
         (SELECT
              (SELECT bolt FROM car_models WHERE car_models.id = wheel_specifications.car_model_id) AS bolt
          FROM wheel_specifications WHERE wheels_in_stock.wheel_specifications_id = wheel_specifications.id) AS bolt
     FROM wheels_in_stock WHERE orders.wheels_in_stock_id = wheels_in_stock.id) AS bolt
FROM orders
ORDER BY client_id;
