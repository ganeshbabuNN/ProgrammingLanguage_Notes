SELECT D1.CNAME FROM DEPOSIT D1, CUSTOMER C1 WHERE D1.AMOUNT < 8000 AND D1.CNAME = C1.CNAME AND C1.CITY IN (SELECT C2.CITY FROM CUSTOMER C2 WHERE C2.CNAME =�SHIVANI�);