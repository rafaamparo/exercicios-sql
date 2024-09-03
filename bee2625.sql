SELECT CONCAT(SUBSTR(p.cpf,1,3),
    '.',SUBSTR(p.cpf,4,3),
    '.',SUBSTR(p.cpf,7,3),
    '-',SUBSTR(p.cpf,10,2))
FROM customers c INNER JOIN natural_person p
    ON c.id = p.id_customers