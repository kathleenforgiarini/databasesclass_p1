SPOOL C:\BD2\Question3.txt
SELECT to_char(sysdate, 'DD Month YYYY Day HH:MI:SS') FROM dual;

SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE FtoC (temperature_f IN NUMBER)  AS
        temp_f NUMBER := temperature_f;
        temp_c NUMBER;
     BEGIN
        temp_c := (5/9) * (temp_f - 32);
        DBMS_OUTPUT.PUT_LINE(temp_f || ' degree in °F is equivalent to '|| temp_c || ' in °C');
     END;
     /
exec FtoC(89)
exec FtoC(37)
exec FtoC(59)

SPOOL OFF;