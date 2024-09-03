SELECT c.name, p.id
FROM orders p
INNER JOIN customers c on c.id = p.id_customers
WHERE p.orders_date BETWEEN '2016-01-01' AND '2016-06-30'