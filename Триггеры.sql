USE online_shop;


-- Создаем таблицу логов
CREATE TABLE logs (
  id INT(11) AUTO_INCREMENT  NOT NULL PRIMARY KEY,
  table_type VARCHAR(255) NOT NULL,
  entity_id VARCHAR(255) NOT NULL,
  name VARCHAR(100) NOT NULL,
  created_at DATETIME DEFAULT NOW()
  ) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;
  
 -- При каждом создании записи в таблицах users, catalogs и products в таблицу logs 
 -- помещается время и дата создания записи, название таблицы, идентификатор первичного 
 -- ключа и содержимое поля name.

DELIMITER //

CREATE TRIGGER log_users_on_insert
AFTER INSERT ON customers
FOR EACH ROW
BEGIN 
INSERT INTO logs SET table_type='customers', entity_id=NEW.id, name=NEW.firstname;
END//

CREATE TRIGGER log_catalogs_on_insert
AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN 
INSERT INTO logs SET table_type='catalogs', entity_id=NEW.id, name=NEW.name;
END//

CREATE TRIGGER log_products_on_insert
AFTER INSERT ON product
FOR EACH ROW
BEGIN 
INSERT INTO logs SET table_type='products', entity_id=NEW.id, name=NEW.name;
END//

-- Создадим запрет на удаление складов

DELIMITER //

CREATE TRIGGER no_warehouses_delete
BEFORE DELETE ON warehouses
FOR EACH ROW
BEGIN
  SIGNAL SQLSTATE '45000'
  SET MESSAGE_TEXT = 'У вас нет прав на данную операцию!';
END//

