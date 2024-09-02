SELECT customers.name, rentals.rentals_date
FROM rentals
INNER JOIN customers on customers.id = rentals.id_customers
WHERE rentals.rentals_date BETWEEN '2016-09-01' AND '2016-09-30'