BEGIN ~50BARLD~

IF WEIGHT #1
~True()~ THEN BEGIN 0
  SAY @16787
  IF ~~ THEN REPLY @16788 GOTO 1
  IF ~!Global("SPRITE_IS_DEADThvara","GLOBAL",0)~ THEN REPLY @16789 DO ~Enemy()~ GOTO 2
  IF ~~ THEN REPLY @16790 DO ~SetGlobal("50Barbarians_Leave","GLOBAL",1)~ GOTO 3
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @16791 DO ~SetGlobal("50Barbarians_Leave","GLOBAL",1)~ GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @16792
  IF ~!Global("SPRITE_IS_DEADThvara","GLOBAL",0)~ THEN REPLY @16793 DO ~Enemy()~ GOTO 2
  IF ~~ THEN REPLY @16794 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @16795
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @16803
  IF ~~ THEN DO ~SetGlobal("50Barbarians_Leave","GLOBAL",1)~ EXIT
END

IF WEIGHT #0
~!Global("50Barbarians_Leave","GLOBAL",0)~ THEN BEGIN 4
  SAY @25672
  IF ~~ THEN REPLY @16794 EXIT
END