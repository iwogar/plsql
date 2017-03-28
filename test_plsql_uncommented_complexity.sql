PROCEDURE foo( bar IN VARCHAR2)
/******************************************************************************
  valid comment
******************************************************************************/
IS
   output                   NUMBER;
BEGIN

      if foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
      elsif foo then
		   bar;
	  end if;
END foo;

-----#EXPECT#-----
Mccc	17
Loc Comment	3
Uncommented Complexity	6
