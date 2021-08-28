SELECT TIMEID,AMOUNT,CHANNELID, AVG(AMOUNT) OVER(ORDER BY TIMEID RANGE BETWEEN 		'1' PRECEDING AND CURRENT ROW) CALC_AMT FROM SALES_DATA
WHERE ROWNUM < 11 ORDER BY 1;
