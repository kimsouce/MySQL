/*SELF JOIN 관련 문제*/

/*
문제:
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the primary key for this table.
This table contains information about the temperature in a certain day.
 

Write an SQL query to find all dates' id with higher temperature compared to its previous dates (yesterday).

Return the result table in any order.

The query result format is in the following example:

Weather
+----+------------+-------------+
| id | recordDate | Temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+

Result table:
+----+
| id |
+----+
| 2  |
| 4  |
+----+
In 2015-01-02, temperature was higher than the previous day (10 -> 25).
In 2015-01-04, temperature was higher than the previous day (20 -> 30).*/

SELECT today.id AS id
FROM Weather AS today
    LEFT JOIN Weather AS yesterday ON DATE_ADD(yesterday.recordDate, Interval 1 DAY) = Today.recordDate
WHERE today.temperature > yesterday.temperature

/*
1. SELF JOIN 문제 풀 때에는 반드시 AS로 별칭 붙여주도록 한다
2. DATE 타입 문제를 풀 때에는 DATE_ADD 함수를 쓰도록 한다 (히든 테스트케이스가 많아서 단순하게 id 가지고 안 풀릴 수 있다)
*/
