/*CASE문 관련 문제*/

/*
문제: Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

Equilateral: It's a triangle with 3 sides of equal length.
Isosceles: It's a triangle with 2 sides of equal length.
Scalene: It's a triangle with 3 sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
*/


SELECT CASE 
            WHEN a=b AND b=c THEN 'Equilateral' 
            WHEN a+b<=c OR a+c<=b OR b+c<=a THEN 'Not A Triangle'
            WHEN a=b OR b=c OR c=a THEN 'Isosceles'
            ELSE 'Scalene'
        END
FROM TRIANGLES;

/*
1. CASE절에서는 WHEN을 써주는 순서도 매우 중요하다
(line by line, 정삼각형인 데이터들은 이미 정해지고 다음 WHEN절로 넘어가지 않음
a=b이지만 두 변을 합해서 c보다 크지 않은 경우 삼각형이 만들어지지 않는다. 따라서 Not A Triangle 쿼리를 먼저 써줘야 )
*/
