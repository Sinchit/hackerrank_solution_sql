/****************************MS SQL SERVER
/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
Input Format

The TRIANGLES table is described as follows:
https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
*/

Select 
Case
    When a+b<=c or b+c<=a or a+c<=b Then "Not A Triangle"
    When a=b and b=c Then "Equilateral"
    When a=b or b=c or c=a Then "Isosceles"
    When a<>b and b<>c and c<>a Then "Scalene"
END As T
From Triangles