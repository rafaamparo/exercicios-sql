SELECT p.name, f.name, c.name
FROM products p
INNER JOIN providers f on p.id_providers = f.id
INNER JOIN categories c on p.id_categories = c.id
WHERE f.name LIKE 'Sansul SA' AND c.name LIKE 'Imported';