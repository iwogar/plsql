	/* ==================================================================== */
	/* Sicherung der Lagerbewegungsdaten
	/* ==================================================================== */
	FUNCTION sichern_bew (in_sqlstmt    CHAR,
	                      in_uebertext  CHAR) RETURN NUMBER IS

		returnwert						PLS_INTEGER := 0;

		/* ================================================================ */
		/* ermitteln, ob der übergebene BewArtTyp gesichert werden soll
		/* ================================================================ */
		FUNCTION bewarttyp_sichern (in_bewarttyp lg_bewart.bewarttyp%TYPE)
		RETURN BOOLEAN IS
			bewarttyp_ist_da	BOOLEAN := FALSE;
		BEGIN
			FOR zaehler IN bewarttypen.FIRST..bewarttypen.LAST LOOP
				IF in_bewarttyp = bewarttypen (zaehler) THEN
					bewarttyp_ist_da := TRUE;
				END IF;
			END LOOP;
			RETURN bewarttyp_ist_da;
		END bewarttyp_sichern;
	BEGIN -- sichern_bew
		LOOP
	    	IF bewarttyp_sichern (bew_rec.bewarttyp) THEN
				sichern_auftrag (bew_rec.auftrnr, bew_rec.bewart,
				                 bew_rec.bewarttyp);
			ELSE
				IF bew_rec.bewarttyp = '-' THEN
					setzen_gesichertkz (bew_rec.auftrnr, bew_rec.bewart, 2);
--				ELSIF bew_rec.bewarttyp = 'x' THEN
--					-- x hier nicht erwartet
--					summe_fehler := summe_fehler + 1;
				ELSE
					-- unbekannter BewArtTyp --> wird nicht verarbeitet
					summe_fehler := summe_fehler + 1;
				END IF;
			END IF;
	    END LOOP;
		IF summe_fehler <> 0 THEN
			returnwert := 1;
		END IF;
		RETURN returnwert;
	END sichern_bew;


-----#EXPECT#-----
RLoc	32
F-RLoc Name	sichern_bew, line 4
F-Args	2
F-Args Name	sichern_bew, line 4
Mccc	7
F-Mccc	7
F-Mccc Name	sichern_bew, line 4
Functions	1
FunctionsUncommented	1
Nl	4
Nl0+	32
Nl1+	22
Nl2+	14
Nl3+	8
Nl4+	2
Nl5+	0
Loc Comment	11
Loc Outcommented	2
Uncommented Complexity	0
