SELECT C1.CNAME FROM CUSTOMER C1 WHERE
C1.CNAME IN (SELECT D1.CNAME FROM DEPOSIT D1 GROUP BY D1.CNAME HAVING 
AVG(D1.AMOUNT) > 1000);