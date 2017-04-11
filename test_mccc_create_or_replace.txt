;CREATE
  OR
REPLACE PROCEDURE procedure_name

CREATE   OR    REPLACE PROCEDURE procedure_name

CREATE 	  OR	 	 REPLACE PROCEDURE procedure_name
-----#EXPECT#-----
# this are create or replace clauses -> OR does not increase Mccc
Mccc	1
