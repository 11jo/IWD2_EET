BEGIN ~60VIFANG~

IF WEIGHT #1
~Global("60ViFang","GLOBAL",0)~ THEN BEGIN 0
  SAY @31317
  IF ~~ THEN REPLY @31319 DO ~SetGlobal("60ViFang","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @31320 DO ~SetGlobal("60ViFang","GLOBAL",1)~ EXIT
END

IF WEIGHT #2
~Global("60ViFang","GLOBAL",1)~ THEN BEGIN 1
  SAY @31321
  IF ~~ THEN REPLY @31319 DO ~SetGlobal("60ViFang","GLOBAL",2)~ GOTO 4
  IF ~~ THEN REPLY @31320 DO ~SetGlobal("60ViFang","GLOBAL",2)~ EXIT
END

IF WEIGHT #3
~True()~ THEN BEGIN 2
  SAY @31322
  IF ~~ THEN REPLY @31319 DO ~SetGlobal("60ViFang","GLOBAL",0)~ GOTO 4
  IF ~~ THEN REPLY @31320 DO ~SetGlobal("60ViFang","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @31323
  IF ~~ THEN REPLY @31324 GOTO 4
  IF ~~ THEN REPLY @31320 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @31325
  IF ~Global("60Treasury","GLOBAL",0)
      Global("60Fang_Vault","GLOBAL",1)~ THEN REPLY @41157 GOTO 11
  IF ~CheckStatGT(LastTalkedToBy,12,CHR)~ THEN REPLY @31326 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,13,CHR)~ THEN REPLY @41159 GOTO 5
  IF ~~ THEN REPLY @31320 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @31327
  IF ~Global("60Treasury","GLOBAL",0)
      Global("60Fang_Vault","GLOBAL",1)~ THEN REPLY @41158 GOTO 11
  IF ~~ THEN REPLY @31320 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @31328
  IF ~Global("60Treasury","GLOBAL",0)~ THEN REPLY @31329 GOTO 7
  IF ~~ THEN REPLY @31320 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @31330
  IF ~~ THEN REPLY @31331 DO ~SetGlobal("60Treasury","GLOBAL",1)
                              AddJournalEntry(@31312,QUEST)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @31332
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @31333 DO ~AddXP2DA("IW2EX12E")
                                                                DisplayStringNoNameDlg(LastTalkedToBy,@31316)
                                                                AddJournalEntry(@31313,QUEST)~ GOTO 9
  IF ~CheckStatLT(LastTalkedToBy,16,CHR)~ THEN REPLY @31333 GOTO 10
END

IF ~~ THEN BEGIN 9
  SAY @31334
  IF ~~ THEN REPLY @31320 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @31335
  IF ~~ THEN REPLY @31320 EXIT
END

IF WEIGHT #0
~!Global("6051_Wearing_Robes","GLOBAL",6)~ THEN BEGIN 11
  SAY @34334
  IF ~~ THEN DO ~Enemy()~ EXIT
END