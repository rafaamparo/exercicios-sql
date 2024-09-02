SELECT movies.id, movies.name
FROM movies
INNER JOIN prices on movies.id_prices = prices.id
WHERE prices.value < 2