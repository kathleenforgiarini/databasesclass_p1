SPOOL C:\BD2\Question6.txt
SELECT to_char(sysdate, 'DD Month YYYY Day HH:MI:SS') FROM dual;

SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION function_CtoF (temp_c IN NUMBER)  
    RETURN NUMBER AS
        temp_f NUMBER;
     BEGIN
        temp_f := (9/5) * temp_c + 32;
        RETURN temp_f;
     END;
     /
     
SET SERVEROUTPUT ON

     DECLARE 
     temp_c NUMBER := 32;
     temp_f NUMBER;
     BEGIN
        temp_f := function_CtoF(temp_c);
        DBMS_OUTPUT.PUT_LINE(temp_c || ' degree in °C is equivalent to '|| temp_f || ' in °F');
     END;
     /
     
      DECLARE 
     temp_c NUMBER := 15;
     temp_f NUMBER;
     BEGIN
        temp_f := function_CtoF(temp_c);
        DBMS_OUTPUT.PUT_LINE(temp_c || ' degree in °C is equivalent to '|| temp_f || ' in °F');
     END;
     /
     
      DECLARE 
     temp_c NUMBER := 3;
     temp_f NUMBER;
     BEGIN
        temp_f := function_CtoF(temp_c);
        DBMS_OUTPUT.PUT_LINE(temp_c || ' degree in °C is equivalent to '|| temp_f || ' in °F');
     END;
     /
     
     
SPOOL OFF;

