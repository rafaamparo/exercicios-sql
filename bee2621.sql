SELECT p.name
FROM products p 
INNER JOIN providers f on p.id_providers = f.id
WHERE p.amount > 10 AND p.amount < 20 AND f.name LIKE 'P%'