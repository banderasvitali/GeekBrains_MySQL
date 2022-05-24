USE online_shop;

-- Просмотр пользователей интернет-магазина, которые больше всего обращались в поддержку:

SELECT CONCAT(c.firstname,' ', c.lastname) AS customer,
COUNT(*) AS number_of_messages
FROM customers AS c
JOIN
messages AS m
ON c.id=m.customer_id
GROUP BY customer
ORDER BY number_of_messages DESC;


-- Просмотр всех заказов конкретного пользователя (на примере пользователя с id 5):

SELECT CONCAT(c.firstname,' ', c.lastname) AS customer,
o.id AS order_number, o.product_id, o.amount, o.paid, o.delivered
FROM customers AS c
JOIN
orders AS o
ON c.id = customer_id
WHERE c.id = 5;

-- Просмотр товара и его количество, хранящегося на определенном складе (на примере склада 1):

SELECT w.name AS warehouse, p.name AS product_name, COUNT(*) AS amount
  FROM warehouses AS w
  JOIN products_warehouses AS pw
    ON w.id = pw.warehouse_id
  JOIN product AS p
    ON pw.product_id = p.id
WHERE pw.warehouse_id = 1
GROUP BY w.name, p.name;


-- Посчитаем количество медиа-файлов, относящихся к определенному товару:

SELECT p.id AS product_id, COUNT(m.id) AS number_of_media 
FROM product AS p 
LEFT JOIN media AS m 
ON p.media_id = m.id 
GROUP BY p.id
ORDER BY number_of_media;

-- Выведем список товаров магазина в зависимости от оценок пользователей магазина (от хучших к лучшим)

SELECT CONCAT(c.firstname,' ', c.lastname) AS customer, c.id,
p.name AS product_name, r.ranking, r.body AS feedback
FROM customers AS c
JOIN
reviews AS r
ON c.id = r.customer_id
JOIN 
product AS p
ON p.id = r.product_id
ORDER BY r.ranking;
