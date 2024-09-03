SELECT p.name, f.name, p.price
FROM products p
INNER JOIN providers f on p.id_providers = f.id
INNER JOIN categories c on p.id_categories = c.id
WHERE c.name LIKE 'Super Luxury' AND p.price > 1000