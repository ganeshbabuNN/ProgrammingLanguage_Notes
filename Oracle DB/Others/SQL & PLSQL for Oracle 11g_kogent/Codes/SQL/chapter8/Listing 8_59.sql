SELECT A.COURSECODE, SUM(B.NETINCOME)
FROM COURSE A, BATCH B
WHERE A.COURSECODE = B.COURSECODE
GROUP BY A.COURSECODE;
