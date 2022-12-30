--Таблица каталога машин
CREATE TABLE carmodels (
	id SERIAL PRIMARY KEY,
	vendor VARCHAR(300) NOT NULL,
	model VARCHAR(300) NOT NULL,
	year INTEGER NOT NULL,
	modification VARCHAR(300) NOT NULL,
	lz INTEGER NOT NULL,
	pcd FLOAT NOT NULL,
	dia FLOAT NOT NULL,
	bolt VARCHAR(300) NOT NULL
);

--Таблица спецификация подвида
CREATE TABLE specificationtype (
  spec_type VARCHAR(20) PRIMARY KEY,
  description VARCHAR(255) DEFAULT NULL
);

-- Таблица каталога шин
CREATE TABLE tyrespecifications (
  id SERIAL PRIMARY KEY,
  carmodel INTEGER NOT NULL,
  spectype VARCHAR NOT NULL,
  front_width INTEGER NOT NULL,
  front_profile INTEGER NOT NULL,
  front_diameter INTEGER NOT NULL,
  back_width INTEGER DEFAULT NULL,
  back_profile INTEGER DEFAULT NULL,
  back_diameter INTEGER DEFAULT NULL
);

 -- Таблица каталога дисков
 CREATE TABLE wheelspecifications (
  id SERIAL PRIMARY KEY,
  carmodel INTEGER NOT NULL,
  spectype VARCHAR(20) NOT NULL,
  front_width FLOAT NOT NULL,
  front_diameter FLOAT NOT NULL,
  front_et FLOAT NOT NULL,
  back_width FLOAT DEFAULT NULL,
  back_diameter FLOAT DEFAULT NULL,
  back_et FLOAT DEFAULT NULL
 );
 
 --Таблица пользователей
 CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(120) NOT NULL UNIQUE,
	phone VARCHAR(15) UNIQUE
);

--Таблица клиентов
CREATE TABLE clients (
	user_id SERIAL PRIMARY KEY,
	carmodel_id INT NOT NULL,
	order_id INT NOT NULL,
	created_at TIMESTAMP
);

--Таблица шин на складе
CREATE TABLE tyres_in_stock (
	id SERIAL PRIMARY KEY,
	tyrespecification_id INTEGER NOT NULL,
	brand VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	width INTEGER NOT NULL,
	profile INTEGER NOT NULL,
	diameter INTEGER NOT NULL,
	speed_indicator INTEGER NOT NULL,
	load_indicator VARCHAR(2) NOT NULL,
	season VARCHAR (10) NOT NULL,
	spikes BOOLEAN DEFAULT FALSE,
	run_of_flat BOOLEAN DEFAULT FALSE
);

--Таблица шин на складе
CREATE TABLE wheels_in_stock (
	id SERIAL PRIMARY KEY,
	wheelspecifications_id INTEGER NOT NULL,
	brand VARCHAR(20) NOT NULL,
	model VARCHAR(20) NOT NULL,
	width INTEGER NOT NULL,
	diameter INTEGER NOT NULL,
	et INTEGER NOT NULL
);

--Таблица заказов
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	client_id INTEGER NOT NULL,
	tyres_id INTEGER,
	wheels_id INTEGER,
	logistic_id INTEGER NOT NULL
);

--Таблица логистики
CREATE TABLE logistics (
	id SERIAL PRIMARY KEY,
	order_id INTEGER NOT NULL,
	driver_id INTEGER NOT NULL,
	logistic_date TIMESTAMP
);

--Таблица водителей
CREATE TABLE drivers (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	phone VARCHAR(15) UNIQUE,
	car VARCHAR(50) NOT NULL
);




