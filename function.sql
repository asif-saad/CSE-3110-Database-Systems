CREATE OR REPLACE FUNCTION total_salary RETURN NUMBER IS
    avg_salary Employee.salary%TYPE;

BEGIN
    SELECT SUM(Salary) INTO avg_salary
    FROM Employee;
    RETURN avg_salary;
END;
/

SET SERVEROUTPUT ON

BEGIN
    DBMS_OUTPUT.PUT_LINE('THE TOTAL SALARY OF ALL STUFFS IN A MONTH IS: ' || total_salary);
END;
/
