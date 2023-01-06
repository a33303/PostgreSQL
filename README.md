# PostgreSQL
<h3>This is my project tires_shop written in PostgreSQL DB</h3>

Проект магазина шин tyres_shop базы данных PostgreSQL представляет модель рабочей БД для интернет - магазина шин и дисков и мои навыки в работе с реляционными базами данных.<br>
Описание таблиц:<br>

<b>carmodels</b>	-	в таблице содержатся данные об автомобиле клиента и его характеристики. <br>
<b>specificationtype</b>	-	в таблице содержатся описание статусов товара для автомобиля. <br>
<b>tyrespecifications</b>	-	в таблице содержатся данные об размерностях шин из таблицы carmodels. <br>
<b>wheelspecifications</b>	-	в таблице содержатся данные об размерностях дисков из таблицы carmodels. <br>
<b>users</b>	-	в таблице содержатся данные о пользователях (ФИО, телефон, почта). <br>
<b>tyres_in_stock</b>	-	в таблице содержатся данные о наличии шин для автомобиля. <br>
<b>wheels_in_stock</b>	-	в таблице содержатся данные о наличии дисков для автомобиля. <br>
<b>orders</b>	-	в таблице содержатся данные о заказах. <br>
<b>client</b>	-	в таблице содержатся остальные данные (это вторая часть таблицы users). <br>
<b>logistics</b>	-	в таблице содержатся данные о логистике (доставки). <br>
<b>drivers</b>	-	в таблице содержатся данные о водителях доставки. <br>

Cодержание проекта:<br>
<b>	dumps	</b>	<br>	-	содержит тестовые данные для формирование работы БД.	<br>
<b>	ERD	</b>	<br>	-	содержит ER - диаграмму базы данных и ее связи.	<br>
<b>	create_foreign_keys	</b>	<br>	-	содержит скрипт по созданию связей (foreign key).	<br>
<b>	create_tables	</b>	<br>	-	содержит скрипт по созданию таблиц данных.	<br>
<b>	create_to_trigger	</b>	<br>	-	содержит созаданный триггер.	<br>
<b>	create_to_user_function	</b>	<br>	-	содержит созаданную пользовательскую функцию.	<br>
<b>	create_to_views	</b>	<br>	-	cодержит представления, в основе которых лежат сложные запросы.	<br>
<b>	request_to_join	</b>	<br>	-	содержит сложные запросы с использованием JOIN.	<br>
<b>	request_to_request	</b>	<br>	-	содержит сложные запросы с использованием коррелирующих вложенных запросов.	<br>
<b>	table_optimization	</b>	<br>	-	содержит оптимизацию запроса.	<br>



![ERD_schema](https://user-images.githubusercontent.com/64500585/211018291-9b7c402a-b7a2-4e22-b08f-dc45cd113d71.png)


