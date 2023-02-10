SPOOL C:\BD2\Question2.txt
SELECT to_char(sysdate, 'DD Month YYYY Day HH:MI:SS') FROM dual;

SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE CtoF (temperature_c IN NUMBER)  AS
        temp_c NUMBER := temperature_c;
        temp_f NUMBER;
     BEGIN
        temp_f := (9/5) * temp_c + 32;
        DBMS_OUTPUT.PUT_LINE(temp_c || ' degree in °C is equivalent to '|| temp_f || ' in °F');
     END;
     /
exec CtoF(32)
exec CtoF(3)
exec CtoF(15)

SPOOL OFF;