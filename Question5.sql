SPOOL C:\BD2\Question5.txt
SELECT to_char(sysdate, 'DD Month YYYY Day HH:MI:SS') FROM dual;

SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE L1q5 (width IN NUMBER, height IN NUMBER)  AS
        area NUMBER;
        perimeter NUMBER;
     BEGIN
        area := width * height;
        perimeter := (width + height) * 2;
        DBMS_OUTPUT.PUT_LINE('The area of a ' || width || ' by '|| height || ' rectangle is ' || area || '. Its perimeter is ' || perimeter);
     END;
     /
exec L1q5(2,3)

SPOOL OFF;