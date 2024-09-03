SELECT p.name, v.name 
FROM products p 
INNER JOIN providers v on p.id_providers = v.id
WHERE v.name LIKE 'Ajax SA'