DECLARE
  v_increment NUMBER := 3;
BEGIN
  FOR I IN REVERSE 1..10
  LOOP
    IF mod(i,v_increment) != 0
    THEN
      CONTINUE;
    END IF;
    dbms_output.put_line(i);
  END LOOP;
END;
/