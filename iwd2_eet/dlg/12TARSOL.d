BEGIN ~12TARSOL~

IF WEIGHT #2
~RandomNum(7,1)~ THEN BEGIN 0
  SAY @15062
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~RandomNum(7,2)~ THEN BEGIN 1
  SAY @15066
  IF ~~ THEN EXIT
END

IF WEIGHT #4
~RandomNum(7,3)~ THEN BEGIN 2
  SAY @15096
  IF ~~ THEN EXIT
END

IF WEIGHT #5
~RandomNum(7,4)~ THEN BEGIN 3
  SAY @15114
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~RandomNum(7,5)~ THEN BEGIN 4
  SAY @15117
  IF ~~ THEN EXIT
END

IF WEIGHT #7
~RandomNum(7,6)~ THEN BEGIN 5
  SAY @15119
  IF ~~ THEN EXIT
END

IF WEIGHT #8
~RandomNum(7,7)~ THEN BEGIN 6
  SAY @15124
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~GlobalGT("Goblin_Palisade_Quest","GLOBAL",0)~ THEN BEGIN 7
  SAY @15125
  IF ~~ THEN EXIT
END

IF WEIGHT #1
~Global("Goblin_Palisade_Quest","GLOBAL",0)
 Global("Goblins_Attack_Palisade","GLOBAL",1)~ THEN BEGIN 8
  SAY @15128
  IF ~~ THEN REPLY @15129 EXIT
END
