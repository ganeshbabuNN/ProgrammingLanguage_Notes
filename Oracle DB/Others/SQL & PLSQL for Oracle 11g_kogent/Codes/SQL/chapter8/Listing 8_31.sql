SELECT ROLLNO,FNAME,SNAME
FROM ENQUIRY,ENROLLMENT
WHERE ENQUIRY.ENQUIRYNO = ENROLLMENT.ENQUIRYNO
AND ENROLLMENT.BATCHCODE = 10001;
