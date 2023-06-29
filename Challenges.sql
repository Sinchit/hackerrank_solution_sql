/****************************MS SQL SERVER
/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
Input Format
https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
*/


/******************MySQL************/
WITH HC AS
(
    Select H.Hacker_id, H.Name,Count(C.challenge_id) AS CNT
    From Hackers H
    Inner join
    Challenges C
    On H.Hacker_id = C.Hacker_id
    Group By H.Name, H.Hacker_id
    Order by Count(C.challenge_id) Desc, H.Hacker_id
),
HC1 AS 
(SELECT *,ROW_NUMBER() OVER(PARTITION BY CNT ORDER BY Hacker_id) AS RN 
 FROM HC)
 
 
Select Hacker_id, Name,CNT
From(
(Select Hacker_id, Name,CNT
From HC1
WHERE CNT=(SELECT MAX(CNT) FROM HC1))
Union
(Select Hacker_id, Name,CNT
From HC1
WHERE NOT cnt IN (SELECT cnt FROM HC1 WHERE rn>1))) AS CD
Order By CNT DESC, Hacker_ID


/******************SQL SERVER********/

WITH HC AS
(
    Select H.Hacker_id, H.Name,Count(C.challenge_id) AS CNT
    From Hackers H
    Inner join
    Challenges C
    On H.Hacker_id = C.Hacker_id
    Group By H.Name, H.Hacker_id
),
HC1 AS 
(SELECT *,ROW_NUMBER() OVER(PARTITION BY CNT ORDER BY Hacker_id) AS RN 
 FROM HC)

Select Hacker_id, Name,CNT
From HC1
WHERE ((NOT cnt IN (SELECT cnt FROM HC1 WHERE rn>1)) ) OR (CNT=(SELECT MAX(CNT) FROM HC1))
Order By cnt Desc, Hacker_ID;