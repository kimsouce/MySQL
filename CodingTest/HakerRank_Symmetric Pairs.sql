/* SELF JOIN, UNION 관련 문제*/

/* 
문제: 
Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.*/

SELECT X, Y 
FROM Functions
WHERE X = Y
GROUP BY X, Y
HAVING COUNT(*) =2

UNION

SELECT f1.X, f1.Y
FROM Functions AS f1
    INNER JOIN Functions AS f2 ON f1.X = f2.Y AND f1.Y = f2.X
WHERE f1.X < f1.Y
ORDER BY X

/*
1. 테스트 케이스를 보면 f1.X = f1.Y 이지만 데이터가 한 개 밖에 없는 경우가 있다. 이 경우는 문제의 조건에 맞지 않기 때문에 제외시켜 주어야 한다. 
 -> 따라서 조건문을 같이 써주지 않고, f1.X = f1.Y 일 때와 f1.X <> f2.Y인 경우 따로 써 준 것이다
2. UNION을 쓸 때 ORDER BY는 한번만, 정렬시키고자 하는 열 이름만 써주면 된다
*/
