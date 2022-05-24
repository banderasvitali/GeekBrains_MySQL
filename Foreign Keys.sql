USE online_shop;

-- Создаем ключи для таблицы товаров

ALTER TABLE product ADD CONSTRAINT product_media_id_fk 
FOREIGN KEY(media_id) REFERENCES media(id)
ON DELETE SET NULL;

ALTER TABLE product ADD CONSTRAINT product_catalog_id_fk 
FOREIGN KEY(catalog_id) REFERENCES catalogs(id)
ON DELETE SET NULL;

-- Создаем ключи для таблицы связи складов и товара

ALTER TABLE products_warehouses ADD CONSTRAINT products_warehouses_warehouse_id_fk 
FOREIGN KEY(warehouse_id) REFERENCES warehouses(id);

ALTER TABLE products_warehouses ADD CONSTRAINT products_warehouses_product_id_fk 
FOREIGN KEY(product_id) REFERENCES product(id);

-- Создаем ключи для таблицы медиафайлов

ALTER TABLE media ADD CONSTRAINT media_product_id_fk 
FOREIGN KEY(product_id) REFERENCES product(id)
ON DELETE CASCADE;

-- Создаем ключи для таблицы профилей пользователей

ALTER TABLE profiles ADD CONSTRAINT profiles_customer_id_fk 
FOREIGN KEY(customer_id) REFERENCES customers(id)
ON DELETE CASCADE;

-- Создаем ключи для таблицы отзывов покупателей о товаре

ALTER TABLE reviews ADD CONSTRAINT reviews_customer_id_fk 
FOREIGN KEY(customer_id) REFERENCES customers(id)
ON DELETE CASCADE;

ALTER TABLE reviews ADD CONSTRAINT reviews_product_id_fk 
FOREIGN KEY(product_id) REFERENCES product(id)
ON DELETE CASCADE;

-- Создаем ключи для таблицы заказов товара покупателями

ALTER TABLE orders ADD CONSTRAINT orders_product_id_fk 
FOREIGN KEY(product_id) REFERENCES product(id)
ON DELETE CASCADE;

ALTER TABLE orders ADD CONSTRAINT orders_customer_id_fk 
FOREIGN KEY(customer_id) REFERENCES customers(id)
ON DELETE CASCADE;

-- Создаем ключи для таблицы переписки с тех. поддержкой

ALTER TABLE messages ADD CONSTRAINT messages_customer_id_fk 
FOREIGN KEY(customer_id) REFERENCES customers(id);

ALTER TABLE messages ADD CONSTRAINT messages_customer_service_id_fk 
FOREIGN KEY(customer_service_id) REFERENCES customer_service(id);
