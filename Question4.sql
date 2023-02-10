SPOOL C:\BD2\Question4.txt
SELECT to_char(sysdate, 'DD Month YYYY Day HH:MI:SS') FROM dual;

SET SERVEROUTPUT ON

CREATE OR REPLACE PROCEDURE L1q4 (value_in IN NUMBER)  AS
        gst NUMBER := 5;
        qst NUMBER := 9.98;
        num_gst NUMBER;
        num_qst NUMBER;
        num_qst_gst NUMBER;
        num_total NUMBER;
     BEGIN
        num_qst := value_in * qst / 100;
        num_gst := value_in * gst / 100;
        num_qst_gst := num_qst + num_gst;
        num_total := value_in + num_qst_gst;
        DBMS_OUTPUT.PUT_LINE('For the price of $' || value_in || ' You will have to pay $'|| num_gst || ' GST, $' || num_qst || ' QST for a total of $' || num_qst_gst || '. The GRAND TOTAL is $' || num_total);
     END;
     /
exec L1q4(100)

SPOOL OFF;