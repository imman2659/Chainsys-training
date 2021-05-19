--1.Write a PL/SQL program to arrange the number of two variable in such a way that the small number will store in
--num_small variable and large number will store in num_large variable.


DECLARE
num_small NUMBER := 8;
num_large NUMBER := 5;
num_temp NUMBER;
BEGIN

IF num_small > num_large THEN
num_temp := num_small;
num_small := num_large;
num_large := num_temp;
END IF;

DBMS_OUTPUT.PUT_LINE ('num_small = '||num_small);
DBMS_OUTPUT.PUT_LINE ('num_large = '||num_large);
END;











--===============================================================
--2.Write a PL/SQL program to check whether a given character is letter or digit.


DECLARE
    get_ctr CHAR(1) := '&inp';
BEGIN
    IF ( get_ctr >= 'A'
         AND get_ctr <= 'Z' )
        OR ( get_ctr >= 'a'
             AND get_ctr <= 'z' ) THEN
      dbms_output.Put_line ('The given character is a letter');
    ELSE
      dbms_output.Put_line ('The given character is not a letter');

      IF get_ctr BETWEEN '0' AND '9' THEN
        dbms_output.Put_line ('The given character is a number');
      ELSE
        dbms_output.Put_line ('The given character is not a number');
      END IF;
    END IF;
END; 
/

--====================================
--3)Write a program in PL/SQL to print the value of a variable inside and outside a loop using LOOP EXIT statement.


DECLARE
  n NUMBER := 0;
BEGIN
  LOOP
    DBMS_OUTPUT.PUT_LINE ('The value of n inside the loop is:  ' || TO_CHAR(n));
    n := n + 1;
    IF n > 5 THEN
      EXIT;
    END IF;
  END LOOP;
  DBMS_OUTPUT.PUT_LINE('The value of n outside the loop is: ' || TO_CHAR(n));
END;
--===========================================================
--4.Write a PL/SQL program to display which day is a specific date
SET serveroutput ON
DECLARE
    t_dt  DATE := To_date('&input_a_date', 'DD-MON-YYYY');
    t_day VARCHAR2(1);
BEGIN
    t_day := To_char(t_dt, 'D');

    CASE t_day
      WHEN '1' THEN
        dbms_output.Put_line ('The date you entered is Sunday.');
      WHEN '2' THEN
        dbms_output.Put_line ('The date you entered is Monday.');
      WHEN '3' THEN
        dbms_output.Put_line ('The date you entered is Tuesday.');
      WHEN '4' THEN
        dbms_output.Put_line ('The date you entered is Wednesday.');
      WHEN '5' THEN
        dbms_output.Put_line ('The date you entered is Thursday.');
      WHEN '6' THEN
        dbms_output.Put_line ('The date you entered is Friday.');
      WHEN '7' THEN
        dbms_output.Put_line ('The date you entered is Saturday.');
    END CASE;
END;
--=====================================================================
--5)Write a PL/SQL procedure to calculate the incentive on a specific target otherwise a general incentive to be paid using IF-THEN-ELSE.
  
  
  
---===============> PROCEDURE IS NOT DISCUSSED IN TODAY'S SESSION (18-MAY-2021).

--===========================================
--6)Write a PL/SQL block to calculate the incentive of an employee whose ID is 110.

DECLARE
  incentive   NUMBER(10,2);
BEGIN
  SELECT salary * 0.12 INTO incentive
  FROM employees
  WHERE employee_id = 110;
DBMS_OUTPUT.PUT_LINE('Incentive  = ' || TO_CHAR(incentive));
END;

--=================================================================

--7)Write a block to display name, contact no and no of rows from employee table.



--====================================
--8.To develop a procedure named adjust_salary() sample database.
-- We’ll update the salary information of employees in the employees table by 
--using SQL UPDATE statement.
...