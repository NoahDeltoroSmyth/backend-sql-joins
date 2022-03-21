-- find all film titles rented out by customers who live in the country of Peru
-- Similar to exercise 7 with an additional join to get country name

SELECT
    title
FROM
    film
LEFT JOIN
    inventory
ON
    film.film_id = inventory.film_id
LEFT JOIN
    rental
ON
    inventory.inventory_id = rental.inventory_id
LEFT JOIN
    customer
ON
    customer.customer_id = rental.customer_id
LEFT JOIN
    address
ON
    customer.address_id = address.address_id
LEFT JOIN
    city
ON
    address.city_id = city.city_id
LEFT JOIN
    country
ON
    country.country_id = city.country_id
WHERE
    country = 'Peru'