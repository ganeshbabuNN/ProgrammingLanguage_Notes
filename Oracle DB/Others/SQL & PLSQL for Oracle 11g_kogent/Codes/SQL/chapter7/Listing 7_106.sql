UPDATE DEPOSIT
SET AMOUNT = AMOUNT * 0.1 WHERE CNAME IN
(SELECT CNAME FROM CUSTOMER WHERE CITY = �NAGPUR�);
