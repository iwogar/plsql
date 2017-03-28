CCREATE
  OR
REPLACE PROCEDURE procedure_name

CREATE   OR    REPLACED PROCEDURE procedure_name

CREATE 	  OR	 .	 REPLACE PROCEDURE procedure_name
-----#EXPECT#-----
# this are no create or replace clauses -> OR increases Mccc
Mccc	4
