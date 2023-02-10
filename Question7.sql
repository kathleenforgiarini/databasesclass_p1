SPOOL C:\BD2\Question7.txt
SELECT to_char(sysdate, 'DD Month YYYY Day HH:MI:SS') FROM dual;

SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION function_FtoC (temp_f IN NUMBER)  
    RETURN STRING AS
        temp_c NUMBER;
     BEGIN
        temp_c := (5/9) * (temp_f - 32);
        RETURN temp_c;
     END;
     /
     
SET SERVEROUTPUT ON

     DECLARE 
     temp_f NUMBER := 89;
     temp_c NUMBER;
     BEGIN
        temp_c:= function_FtoC(temp_f);
        DBMS_OUTPUT.PUT_LINE(temp_f || ' degree in °F is equivalent to '|| temp_c || ' in °C');
     END;
     /
     
     DECLARE 
     temp_f NUMBER := 59;
     temp_c NUMBER;
     BEGIN
        temp_c:= function_FtoC(temp_f);
        DBMS_OUTPUT.PUT_LINE(temp_f || ' degree in °F is equivalent to '|| temp_c || ' in °C');
     END;
     /
   
     DECLARE 
     temp_f NUMBER := 37;
     temp_c NUMBER;
     BEGIN
        temp_c:= function_FtoC(temp_f);
        DBMS_OUTPUT.PUT_LINE(temp_f || ' degree in °F is equivalent to '|| temp_c || ' in °C');
     END;
     /
     
SPOOL OFF;

