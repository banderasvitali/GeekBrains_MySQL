-- Создаём БД интернет магазина
CREATE DATABASE online_shop;

-- Переходим в неё
USE online_shop;

-- Создаем таблицу товаров
CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) UNIQUE COMMENT 'Наименование товара',
  price INT UNSIGNED COMMENT 'Цена товара',
  description TEXT COMMENT 'Описание товара',
  catalog_id bigint(20) UNSIGNED,
  media_id bigint(20) UNSIGNED,
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  INDEX (name)
) COMMENT = 'Товарные позиции интернет-магазина';

-- Создаем таблицу разделов магазина
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150) UNIQUE COMMENT 'Название раздела'
)COMMENT = 'Разделы интернет-магазина';

-- Создаем таблицу складов
CREATE TABLE warehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(150) UNIQUE COMMENT 'Адрес склада'
) COMMENT = 'Склады товаров';

-- Создаем таблицу связи складов и товаров
CREATE TABLE products_warehouses (
  id SERIAL PRIMARY KEY,
  warehouse_id bigint(20) UNSIGNED,
  product_id bigint(20) UNSIGNED,
  amount INT UNSIGNED COMMENT 'Запас товарной позиции на складе'
) COMMENT = 'Запасы на складе';

-- Создаем таблицу медиафайлов
CREATE TABLE media (
  id SERIAL PRIMARY KEY,
  product_id bigint(20) UNSIGNED,
  filename VARCHAR(255) NOT NULL,
  size INT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Медиафайлы';

-- Создаём таблицу покупателей
CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL COMMENT 'Имя покупателя', 
  lastname VARCHAR(100) NOT NULL COMMENT 'Фамилия покупателя',
  email VARCHAR(120) NOT NULL UNIQUE COMMENT 'е-mail адрес покупателя',
  phone VARCHAR(120) NOT NULL UNIQUE COMMENT 'Телефон покупателя',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  INDEX (lastname),
  INDEX (email),
  INDEX (phone)
) COMMENT = 'Покупатели';

-- Создаем таблицу профилей покупателей
CREATE TABLE profiles (
  customer_id bigint(20) unsigned NOT NULL PRIMARY KEY,
  sex CHAR(1) NOT NULL COMMENT 'Пол покупателя',
  birthday DATE COMMENT 'Дата рождения покупателя',
  address VARCHAR(200) COMMENT 'Адрес покупателя'
) COMMENT = 'Профили покупателей';

-- Создаем таблицу отзывов покупателей о товаре
CREATE TABLE reviews (
  id SERIAL PRIMARY KEY,
  customer_id bigint(20) UNSIGNED,
  product_id bigint(20) UNSIGNED,
  body TEXT NOT NULL COMMENT 'Отзыв покупателя о товаре',
  ranking TINYINT COMMENT 'Оценка товара от 0 до 10',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW(),
  INDEX (ranking)
) COMMENT = 'Отзывы покупателей от товарах';

-- Создаем таблицу заказов
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_id bigint(20) UNSIGNED,
  product_id bigint(20) UNSIGNED,
  paid BOOLEAN COMMENT 'Статус оплаты заказа',
  amount INT UNSIGNED NOT NULL,
  delivered BOOLEAN COMMENT 'Статус доставки заказа покупателю',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT = 'Заказы';

-- Создаем таблицу команды работников магазина
CREATE TABLE customer_service (
  id SERIAL PRIMARY KEY,
  firstname VARCHAR(100) NOT NULL COMMENT 'Имя работника магазина', 
  lastname VARCHAR(100) NOT NULL COMMENT 'Фамилия работника магазина',
  email VARCHAR(120) NOT NULL UNIQUE COMMENT 'e-mail адрес работника магазина',
  created_at DATETIME DEFAULT NOW(),
  updated_at DATETIME DEFAULT NOW() ON UPDATE NOW()
) COMMENT = 'Тех. поддержка интернет-магазина';

-- Создаем таблицу переписки с тех. поддержкой
CREATE TABLE messages (
  customer_id bigint(20) unsigned PRIMARY KEY,
  customer_service_id bigint(20) unsigned NOT NULL,
  body TEXT NOT NULL,
  important BOOLEAN,
  delivered BOOLEAN,
  created_at DATETIME DEFAULT NOW()
 ) COMMENT = 'Переписка покупателей и тех. поддержки интернет-магазина';
