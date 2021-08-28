CREATE OR REPLACE procedure logit
AS 
  v_message CONSTANT VARCHAR2(100) := 'Hello World!';
  v_date DATE := SYSDATE;
BEGIN
  DBMS_OUTPUT.put_line(
        v_message ||
        ' The date and time is ' ||
        to_char(v_date, 'Day') || ' on ' ||
        to_char(v_date, 'FMDD Month, YYYY') ||
        ' @ ' ||
        to_char(v_date, 'HH24:MI:SS')
        );
END;
/

---call the procedure
begin
  logit;
end;
