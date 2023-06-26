/*
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:
https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true
*/
With A As
(Select ID, Length(City) AS NameLen 
 From Station),
 B AS
(Select Min(NameLen) As MinNL
 From A),
 C AS
(Select Max(NameLen) As MaxNL
 From A)
 
(Select S.City, B.MinNL
From Station S
Inner Join A
ON S.ID = A.ID
Inner Join B
On A.NameLen=B.MinNL
Order By City
Limit 1)

Union

(Select S.City, C.MaxNL
From Station S
Inner Join A
ON S.ID = A.ID
Inner Join C
On A.NameLen=C.MaxNL
Order By City
Limit 1);




 