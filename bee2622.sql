SELECT c.name
FROM customers c
INNER JOIN legal_person j on j.id_customers = c.id