SPOOL C:\BD2\Question1.txt
SELECT to_char(sysdate, 'DD Month YYYY Day HH:MI:SS') FROM dual;

SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE L1q1 (p_num_in IN NUMBER)  AS
        v_num_in NUMBER;
        v_result NUMBER;
     BEGIN
        v_num_in := p_num_in;
        v_result := v_num_in * 3;
        DBMS_OUTPUT.PUT_LINE('The tripe of '|| v_num_in || ' is ' || v_result || ' . ');
     END;
     /
exec L1q1(2)
exec L1q1(3)

SPOOL OFF;






