--example of the excluding the business day
create or replace PROCEDURE PRINT_BUSINESS_DAYS
  (
    P_START_DATE IN DATE 
    , P_END_DATE IN DATE 
  )
AS
  v_loop_increment NUMBER := 0;
BEGIN
  WHILE p_start_date + v_loop_increment <= p_end_date
  LOOP
    IF to_number(to_char(p_start_date + v_loop_increment, 'd'))
      IN (2,3,4,5,6)
    THEN 
      dbms_output.put_line(to_char(p_start_date + v_loop_increment, 'FMDay DD "of" Month, YYYY'));
    END IF;
    v_loop_increment := v_loop_increment + 1;
  END LOOP;
END PRINT_BUSINESS_DAYS;
/

--call the procedures and check
begin
  print_business_days(
     to_date( '02-Nov-2015', 'DD-MON-YYYY'),
     to_date('12-Nov-2015', 'DD-MON-YYYY')
  );
end;
/