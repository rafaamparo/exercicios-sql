SELECT categories.name, SUM(products.amount) as sum
FROM products
INNER JOIN categories on categories.id = products.id_categories
WHERE products.id_categories = categories.id
GROUP BY categories.name