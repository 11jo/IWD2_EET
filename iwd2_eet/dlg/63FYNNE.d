BEGIN ~63FYNNE~

IF WEIGHT #2
~Global("63Thayvian_Ruse","GLOBAL",2)~ THEN BEGIN 0
  SAY @30253
  IF ~~ THEN REPLY @30254 EXTERN ~63TASHA~ 1
END

IF ~~ THEN BEGIN 1
  SAY @30255
  IF ~~ THEN REPLY @30256 EXTERN ~63TASHA~ 2
END

IF ~~ THEN BEGIN 2
  SAY @30257
  IF ~~ THEN REPLY @30258 EXTERN ~63TASHA~ 3
END

IF ~~ THEN BEGIN 3
  SAY @30259
  IF ~~ THEN REPLY @30260 EXTERN ~63TASHA~ 4
END

IF ~~ THEN BEGIN 4
  SAY @30261
  IF ~~ THEN REPLY @30262 EXTERN ~63TASHA~ 5
END

IF ~~ THEN BEGIN 5
  SAY @30263
  IF ~~ THEN REPLY @30264 DO ~AddXP2DA("IW2EX14E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@30279)
                              AddJournalEntry(@30278,QUEST)~ EXTERN ~63TASHA~ 6
END

IF WEIGHT #0
~Global("63Thayvian_Ruse","GLOBAL",0)~ THEN BEGIN 6
  SAY @30265
  IF ~~ THEN REPLY @30266 DO ~SetNumTimesTalkedTo(0)~ EXIT
END

IF WEIGHT #1
~Global("63Thayvian_Ruse","GLOBAL",1)~ THEN BEGIN 7
  SAY @30265
  IF ~~ THEN REPLY @15951 EXIT
END
