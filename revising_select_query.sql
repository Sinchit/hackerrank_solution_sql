/********************MY SQL**************************************

/*
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
The CITY table is described as follows:
https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true
*/

Select *
From CITY
WHERE (POPULATION>100000) AND (CountryCode Like "USA")

/*
Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
The CITY table is described as follows:
https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
*/

SELECT A.NAME
FROM CITY AS A
WHERE ( A.POPULATION>120000 AND  A.COUNTRYCODE = 'USA') ;

/*
Query all columns for a city in CITY with the ID 1661.
The CITY table is described as follows:
https://www.hackerrank.com/challenges/select-by-id/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
*/

Select *
From CITY
Where ID = 1661;
