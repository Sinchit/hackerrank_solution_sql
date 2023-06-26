/********************MY SQL**************************************

/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
Note: Print NULL when there are no more names corresponding to an occupation.

The OCCUPATIONS table is described as follows:
https://www.hackerrank.com/challenges/occupations/problem?h_r=next-challenge&h_v=zen&isFullScreen=true

Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

Explanation
The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.
*/


With D As 
(Select Name As DName, Row_number() over (Order By Name Asc) AS row_num
From OCCUPATIONS
Where Occupation = 'Doctor'),
P As 
(Select Name As PName, Row_number() over (Order By Name Asc) AS row_num
From OCCUPATIONS
Where Occupation = 'Professor'),
S As (Select Name As SName, Row_number() over (Order By Name Asc) AS row_num
From OCCUPATIONS
Where Occupation = 'Singer'),
A As (Select Name As AName, Row_number() over (Order By Name Asc) AS row_num
From OCCUPATIONS
Where Occupation = 'Actor'),
O As (Select Name As OName, Row_number() over (Order By Name Asc) AS row_num
From OCCUPATIONS)

Select D.DName, P.PName, S.SName, A.AName 
From OCCUPATIONS
LEFT Join O
On OCCUPATIONS.Name = O.OName
Left Join D
ON O.row_num=D.row_num
Left Join P
On O.row_num=P.row_num
Left Join S
On O.row_num=S.row_num
Left Join A
On O.row_num=A.row_num
WHERE (S.SName AND A.AName AND D.DName AND P.PName) IS NOT NULL
order by O.row_num asc