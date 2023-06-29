/****************************MS SQL SERVER
/*
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of 0 from your result.
https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true&utm_campaign=challenge-recommendation&utm_medium=email&utm_source=24-hour-campaign
*/

With S1 as
(Select submission_id, hacker_id, challenge_id, score, row_number() Over (Partition by hacker_id, challenge_id order by Score Desc) as rn 
From Submissions)

Select S1.hacker_id, H.name, Sum(S1.score)
From Hackers H
Inner Join
S1
On H.hacker_id = S1.hacker_id
Where rn = 1 and score <> 0
Group By S1.hacker_id, H.name
Order By Sum(S1.score) desc, S1.hacker_id
