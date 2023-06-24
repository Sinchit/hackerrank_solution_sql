/*
Amber's conglomerate corporation just acquired some new companies. Each of the companies follows this hierarchy: 
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.

Note:
The tables may contain duplicate records.
The company_code is string, so the sorting should not be numeric. For example, if the company_codes are C_1, C_2, and C_10, then the ascending company_codes will be C_1, C_10, and C_2.
https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
*/

Select Distinct C.company_code, C.founder, Count(Distinct LM.lead_manager_code), Count(Distinct SM.senior_manager_code), Count(Distinct M.manager_code), Count(Distinct E.employee_code)  
From Company C
Inner Join
Lead_Manager LM
On C.company_code = LM.company_Code
Inner Join
Senior_Manager SM
On LM.lead_manager_code = SM.lead_manager_code
Inner Join
Manager M
On SM.senior_manager_code = M.senior_manager_code
Inner Join
Employee E
On M.manager_code = E.manager_code
Group By C.company_code, C.founder

