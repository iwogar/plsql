PROCEDURE pr1( inDoppelkontoKundeId IN VARCHAR2,
									   inKontonummer 		IN NUMBER,
									   inKundenfirmaId      IN VARCHAR2 )
/******************************************************************************

  Procedure: doppelkontoAuftragUmsteuern

		     - Doppelkontoauftrag umsteuern

  Parameter: inDoppelkontoKundeId	DoppelkontoKundeId
			 inKontonummer 			Kontonummer
			 inKundenfirmaId		Kundenfirma - ID

******************************************************************************/
IS
   OutErg                   NUMBER;
BEGIN

      if recAuftragkopf.kdfirmkz = 11 then
		   MemoDKAuftrag  := '' || recAuftragkopf.kdnr;
      elsif recAuftragkopf.kdfirmkz = 11 then
		   MemoDKAuftrag  := '' || recAuftragkopf.kdnr;
      elsif recAuftragkopf.kdfirmkz = 11 then
		   MemoDKAuftrag  := '' || recAuftragkopf.kdnr;
      elsif recAuftragkopf.kdfirmkz = 11 then
		   MemoDKAuftrag  := 'P' || recAuftragkopf.kdnr;
      elsif recAuftragkopf.kdfirmkz = 11 then
		   MemoDKAuftrag  := '' || recAuftragkopf.kdnr;
	  else
		   MemoAltAuftrag := '' || inKontonummer;
	  end if;
END pr1;

-----#EXPECT#-----
RLoc	20
F-RLoc	13
F-RLoc Name	pr1, line 1
F-Args	3
F-Args Name	pr1, line 1
Mccc	6
F-Mccc	6
F-Mccc Name	pr1, line 1
Functions	1
FunctionsUncommented	0
Nl	2
Nl0+	20
Nl1+	13
Nl2+	6
Nl3+	0
Loc Comment	7
Loc Outcommented	0
Uncommented Complexity	0
