BEGIN ~60CCABAL~

IF ~Global("60CCabal","GLOBAL",0)
    Global("6051_Wearing_Robes","GLOBAL",6)~ THEN BEGIN 0
  SAY @31236
  IF ~~ THEN REPLY @31238 DO ~SetGlobal("60CCabal","GLOBAL",1)~ GOTO 4
  IF ~~ THEN REPLY @31239 DO ~SetGlobal("60CCabal","GLOBAL",1)~ EXIT
END

IF ~Global("60CCabal","GLOBAL",1)
    Global("6051_Wearing_Robes","GLOBAL",6)~ THEN BEGIN 1
  SAY @31240
  IF ~~ THEN REPLY @31238 DO ~SetGlobal("60CCabal","GLOBAL",2)~ GOTO 4
  IF ~~ THEN REPLY @31239 DO ~SetGlobal("60CCabal","GLOBAL",2)~ EXIT
END

IF ~Global("6051_Wearing_Robes","GLOBAL",6)~ THEN BEGIN 2
  SAY @31241
  IF ~~ THEN REPLY @31238 DO ~SetGlobal("60CCabal","GLOBAL",0)~ GOTO 4
  IF ~~ THEN REPLY @31239 DO ~SetGlobal("60CCabal","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @31242
  IF ~~ THEN REPLY @31243 GOTO 4
  IF ~~ THEN REPLY @31239 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @31244
  IF ~CheckStatGT(LastTalkedToBy,15,INT)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      Global("60Stele","GLOBAL",0)~ THEN REPLY @31245 GOTO 6
  IF ~CheckStatLT(LastTalkedToBy,16,INT)~ THEN REPLY @31248 GOTO 5
  IF ~~ THEN REPLY @31239 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @31249
  IF ~~ THEN REPLY @31239 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @31250
  IF ~~ THEN REPLY @31251 GOTO 7
  IF ~~ THEN REPLY @31252 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @31253
  IF ~~ THEN REPLY @31254 DO ~SetGlobal("60Stele","GLOBAL",1)~ GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @31255
  IF ~~ THEN REPLY @31254 DO ~AddXP2DA("IW2EX12E")
                              DisplayStringNoNameDlg(LastTalkedToBy,@31235)
                              AddJournalEntry(@31234,QUEST)~ GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @31256
  IF ~~ THEN REPLY @31258 EXIT
END

IF ~!Global("6051_Wearing_Robes","GLOBAL",6)~ THEN BEGIN 10
  SAY @34328
  IF ~~ THEN DO ~Enemy()~ EXIT
END
