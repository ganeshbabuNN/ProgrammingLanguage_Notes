SELECT FNAME
FROM  ENQUIRY E1
WHERE E1.CITY = �NAGPUR�
AND EXISTS(SELECT * FROM ENROLLMENT EN1,BATCH B1
WHERE EN1.BATCHCODE = B1.BATCHCODE
AND EN1.ENQUIRYNO = E1.ENQUIRYNO
AND B1.COURSECODE = 10);
