/****************************MS SQL SERVER
/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
Input Format
The CITY and COUNTRY tables are described as follows:
https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
*/

Select sum(C.Population)
From City C
Inner Join Country Co
ON C.CountryCode = Co.Code
Where Continent ='Asia'
Group By Continent