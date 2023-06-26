/*
Query a count of the number of cities in CITY having a Population larger than .
Input Format
The CITY table is described as follows:
https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true
*/
Select Count(DISTINCT ID)
From CITY
Where POPULATION > 100000

/*
Query the total population of all cities in CITY where District is California.
Input Format

The CITY table is described as follows:
https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
*/
Select Sum(POPULATION)
From CITY
Where DISTRICT Like "California"

