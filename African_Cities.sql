/****************************MS SQL SERVER
/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format
The CITY and COUNTRY tables are described as follows:
https://www.hackerrank.com/challenges/african-cities/problem?h_r=next-challenge&h_r=next-challenge&h_v=zen&h_v=zen&isFullScreen=true
*/

Select Ci.Name
From City Ci
Inner Join
Country Co
On Ci.CountryCode=Co.Code
Where Continent = 'Africa'