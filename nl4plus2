
DECLARE
   jobid      employees.job_id%TYPE;
   empid      employees.employee_id%TYPE := 115;
   sal_raise  NUMBER(3,2);
BEGIN
  SELECT job_id INTO jobid from employees WHERE employee_id = empid;
  CASE
    WHEN jobid = 'PU_CLERK' THEN select * from metric where (
      CASE name WHEN 'RLoc' THEN True
        WHEN jobid = 'PU_CLERK' THEN select * from metric where (
          CASE name WHEN 'RLoc' THEN True
            WHEN jobid = 'PU_CLERK' THEN select * from metric where (
              CASE name WHEN 'RLoc' THEN True
                WHEN 'Nl4+' THEN True ELSE True
              END CASE);
          END CASE);
      END CASE);
    WHEN jobid = 'SH_CLERK' THEN sal_raise := .08;
    ELSE sal_raise := 0;
  END CASE;
END;
