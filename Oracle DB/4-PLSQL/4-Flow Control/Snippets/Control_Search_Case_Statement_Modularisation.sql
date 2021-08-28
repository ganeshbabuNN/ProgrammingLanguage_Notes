--modularisation of code improves modularity and readablity

create or replace PROCEDURE logit(
  v_message IN VARCHAR2 DEFAULT 'Hello World!',
  v_output_target IN VARCHAR2 DEFAULT 'T')
AS
  PRAGMA AUTONOMOUS_TRANSACTION;
  v_date DATE := SYSDATE;
  PROCEDURE do_output( --modular code
    v_message IN VARCHAR2,
    v_date IN DATE )
  AS
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
  PROCEDURE do_insert(
    v_message IN VARCHAR2,
    v_date IN DATE )
  AS
  BEGIN
    insert into log_table
      (date_and_time, message)
      VALUES (v_date, v_message);
  END;
BEGIN
  CASE
  WHEN v_output_target = 'T'
  THEN
    do_insert(v_message, v_date);
  WHEN v_output_target = 'D'
  THEN
    do_output(v_message, v_date);
  WHEN v_output_target = 'TD'
    OR v_output_target = 'DT'
  THEN
    do_insert(v_message, v_date);
    do_output(v_message, v_date);
  ELSE
    logit('ERROR v_output_target: ' ||
          v_output_target ||
          ' not found.', 'T' );
  END CASE;
  COMMIT;
END;
/


--call the proc

BEGIN
  logit(v_output_target => 'P');
  BEGIN
    logit( 'Hello again!',v_output_target => 'D');
    DECLARE
      v_a_different_msg VARCHAR2(100);
    BEGIN
      rollback; -- Notice the rollback
      v_a_different_msg := 'Where am I?';
      logit( v_a_different_msg );
    END;
  END;
END;
/


