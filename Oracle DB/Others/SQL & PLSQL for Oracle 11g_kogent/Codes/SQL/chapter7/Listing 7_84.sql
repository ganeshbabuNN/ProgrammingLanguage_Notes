SELECT BNAME FROM DEPOSIT GROUP BY BNAME HAVING SUM(AMOUNT) > 4000;