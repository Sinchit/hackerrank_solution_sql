/****************************MS SQL SERVER
/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
Input Format
The CITY and COUNTRY tables are described as follows:
https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?h_r=next-challenge&h_r=next-challenge&h_v=zen&h_v=zen&isFullScreen=true&h_r=next-challenge&h_v=zen
*/

Select Co.Continent, Avg(Ci.Population) AS Avg_Population
From City Ci
Inner Join
Country Co
On Ci.CountryCode=Co.Code
Group By Co.Continent