SELECT D.CNAME FROM DEPOSIT D WHERE AMOUNT IN
(SELECT MAX(D1.AMOUNT) FROM DEPOSIT D1, CUSTOMER C1 WHERE
D1.CNAME = C1.CNAME AND C1.CITY = 'NAGPUR');