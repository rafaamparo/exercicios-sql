SELECT p.name, c.name
FROM products p 
INNER JOIN categories c ON p.id_categories = c.id
WHERE (p.amount > 100)
    AND (c.id = 1 or c.id = 2 or c.id = 3 or c.id = 6 or c.id = 9)
ORDER BY c.id