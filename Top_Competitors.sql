/****************************MS SQL SERVER
/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
https://www.hackerrank.com/challenges/full-score/problem?h_r=next-challenge&h_r=next-challenge&h_v=zen&h_v=zen&isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
*/

Select H.Hacker_id, H.Name
From Hackers H
Inner join
Submissions S
On H.hacker_id = S.hacker_id
Inner join
Challenges C
On C.challenge_id = S.challenge_id
Inner Join
Difficulty D
On C.difficulty_level = D.difficulty_level AND S.Score = D.Score
Group By H.Name, H.Hacker_id
Having Count(S.challenge_id)>1
Order by Count(S.challenge_id) Desc, H.Hacker_id