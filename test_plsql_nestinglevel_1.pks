PROCEDURE pr1(  a IN VARCHAR2,
				b IN VARCHAR2,
				c IN VARCHAR2 )
IS
   result NUMBER;
BEGIN

  IF a = 5 then
	  b = 6
  ELSE
  	c = 6
  END IF;

	CASE [ expression ]
	   WHEN condition_1 THEN result_1
	   WHEN condition_2 THEN result_2
	   WHEN condition_n THEN result_3
	   ELSE result
	END

	DECLARE 
   x number := 10; 
	BEGIN 
	   LOOP 
	      dbms_output.put_line(x); 
	      x := x + 10; 
	      IF x > 50 THEN 
	         exit; 
	      END IF; 
	   END LOOP; 
	   -- after exit, control resumes here  
	   dbms_output.put_line('After Exit x is: ' || x); 
	END;
END pr1;


-----#EXPECT#-----
RLoc	30
Mccc	7
Nl	4
Nl0+	30
Nl1+	23
Nl2+	15
Nl3+	5
Nl4+	1
