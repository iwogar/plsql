CREATE OR REPLACE PROCEDURE procedure_name
(parameter_name IN type, parameter_name IN type)
IS
BEGIN
  IF(x(foo) = bar) THEN
       SELECT stuff INTO otherstuff
	   FROM blub.bla b
	   WHERE
	       b.foo = bar
	       AND stuff = otherstuff
	       AND something =
            CASE
                WHEN (EXISTS(something
                        WHERE bla = foo
                            AND bar = baz
	                        ))
                    THEN stuff
                CASE WHEN (EXISTS(blafoo
                        WHERE c.MKE_CDE = c1.MKE_CDE))
                    THEN 'whatever'
               ELSE 'whatever'
            END;
    ELSE IF(LENGTH(bla) = 3) THEN
   	   SELECT stuff
	   FROM bla
	   WHERE
            x = y
            AND y = x
	        AND x =
            CASE
                WHEN (EXISTS(foo
                        WHERE 	x = y
                           AND y = x) )
                    THEN whatever
                WHEN (EXISTS(stuff
                        WHERE x = y
                           AND y = x
                           OR y < x))
                     THEN 'foo'
                     ELSE 'bar'
            END
	        AND x = y
       END;

    ELSE
        stuff := NULL;
    END IF;

    RETURN foo;
END procedure_name;

FOR stuff in otherstuff LOOP
    do something
    EXIT when too%bla
END LOOP;

LOOP
  do stuff
END LOOP;

DECLARE
   exception_name EXCEPTION;
BEGIN
   IF condition THEN
      RAISE exception_name;
   END IF;
EXCEPTION
   WHEN exception_name THEN
   statement;
END;

END procedure_name;
-----#EXPECT#-----
# 1 + 3*if + 1*for-loop + 1*loop  + 8*and + 1*or + 6*when (1 in exception, 1 in exit, 4 in case)
Mccc	21
