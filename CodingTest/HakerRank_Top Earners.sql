  
/*
문제:
We define an employee's total earnings to be their monthly salary*earnings  worked, 
and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as  space-separated integers.
*/

/*
1. salary * month = earnings
2. 각 earnings별 몇명이 그만큼 벌었는지 계산 -- GROUP BY
3. earnings 중 가장 큰 값을 가져온다 -- ORDER BY, LIMIT
*/

SELECT salary * months AS earnings 
    ,COUNT(*)
FROM employee
GROUP BY earnings
ORDER BY earnings DESC 
LIMIT 1;
