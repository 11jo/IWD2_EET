BEGIN ~64GNLAP1~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @34179
  IF ~~ THEN REPLY @34180 GOTO 1
  IF ~~ THEN REPLY @34181 GOTO 3
  IF ~~ THEN REPLY @34182 GOTO 6
  IF ~~ THEN REPLY @34183 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @34184
  IF ~~ THEN REPLY @34187 GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @34188
  IF ~~ THEN REPLY @34181 GOTO 3
  IF ~~ THEN REPLY @34182 GOTO 6
  IF ~~ THEN REPLY @34183 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @34189
  IF ~~ THEN REPLY @34192 GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @34193
  IF ~~ THEN REPLY @34194 GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @34195
  IF ~~ THEN REPLY @34180 GOTO 1
  IF ~~ THEN REPLY @34182 GOTO 6
  IF ~~ THEN REPLY @34183 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @34196
  IF ~~ THEN REPLY @34197 DO ~AddJournalEntry(@34178,QUEST)~ GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @34198
  IF ~~ THEN REPLY @34199 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @34200
  IF ~~ THEN REPLY @34180 GOTO 1
  IF ~~ THEN REPLY @34181 GOTO 3
  IF ~~ THEN REPLY @34182 GOTO 6
  IF ~~ THEN REPLY @34183 EXIT
END

IF WEIGHT #-1 ~GlobalGT("MT_Rude_Guests","GLOBAL",0)~ THEN BEGIN 9
  SAY @34201
  IF ~~ THEN REPLY @34199 EXIT
END
