SELECT cities.name, continents.name, countries.name
FROM cities, continents, countries, cities_countries_continents
WHERE cities_countries_continents.cities_id = cities.id
AND cities_countries_continents.contries_id = countries.id
AND cities_countries_continents.continents_id = continents.id
