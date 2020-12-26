/*GROUP BY 관련 문제*/


/*
문제:
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) 
rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population))
FROM city
    INNER JOIN country ON CITY.CountryCode = COUNTRY.Code
GROUP BY country.continent 

/*
1. country의 continent 별로 city population이 나와야 하므로, 집계함수를 쓰기 위해 GROUP BY를 해주는 것이다. 
*/
