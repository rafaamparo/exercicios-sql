WITH T1 AS(
    SELECT MAX(customers_number) as maximo
    FROM lawyers),
T2 AS (
    SELECT name,customers_number 
    FROM lawyers
    WHERE customers_number = (SELECT (maximo) FROM T1)),
T3 AS(
    SELECT MIN(customers_number) as minimo
    FROM lawyers),
T4 AS (
    SELECT name, customers_number 
    FROM lawyers
    WHERE customers_number = (SELECT (minimo) FROM T3)),
T5 AS(
    SELECT 'Average' as name, CAST(AVG(customers_number) AS INT) as customers_number
    FROM lawyers)
SELECT name, customers_number FROM T2
UNION ALL
SELECT name, customers_number FROM T4
UNION ALL
SELECT name, customers_number FROM T5