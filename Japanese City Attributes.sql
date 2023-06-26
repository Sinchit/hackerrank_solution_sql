/********************MY SQL**************************************

/*
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:
https://www.hackerrank.com/challenges/japanese-cities-attributes/problem?isFullScreen=true
*/

Select *
From CITY
Where Countrycode = "JPN"

/*
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
The CITY table is described as follows:
https://www.hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
*/

Select Name
From CITY
Where Countrycode = "JPN"