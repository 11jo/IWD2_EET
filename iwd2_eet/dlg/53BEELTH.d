BEGIN ~53BEELTH~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22175
  IF ~~ THEN REPLY @22176 GOTO 1
  IF ~!Race(LastTalkedToBy,HUMAN)~ THEN REPLY @22178 GOTO 2
  IF ~~ THEN REPLY @22179 GOTO 3
  IF ~~ THEN REPLY @22182 DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @22183
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22190
  IF ~~ THEN REPLY @22176 GOTO 1
  IF ~~ THEN REPLY @22179 GOTO 3
  IF ~~ THEN REPLY @22182 DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 3
  SAY @22191
  IF ~~ THEN REPLY @22176 GOTO 1
  IF ~~ THEN REPLY @22192 DO ~Enemy()~ GOTO 5
  IF ~~ THEN REPLY @22182 DO ~Enemy()~ GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @22195
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22196
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 6
  SAY @22197
  IF ~~ THEN DO ~Enemy()~ EXIT
END
