BEGIN ~60YTARCH~

IF WEIGHT #1
~NumTimesTalkedTo(0)
 RandomNum(5,1)~ THEN BEGIN 0
  SAY @33085
  IF ~~ THEN REPLY @33086 GOTO 5
  IF ~Global("60Know_Challenges","GLOBAL",1)~ THEN REPLY @33087 GOTO 7
  IF ~~ THEN REPLY @33088 GOTO 5
  IF ~~ THEN REPLY @33089 GOTO 5
  IF ~~ THEN REPLY @33090 GOTO 6
END

IF WEIGHT #2
~NumTimesTalkedTo(0)
 RandomNum(5,2)~ THEN BEGIN 1
  SAY @33091
  IF ~~ THEN REPLY @33086 GOTO 5
  IF ~~ THEN REPLY @33092 GOTO 5
  IF ~~ THEN REPLY @33094 GOTO 5
  IF ~Global("60Know_Challenges","GLOBAL",1)~ THEN REPLY @33095 GOTO 7
  IF ~~ THEN REPLY @33090 GOTO 6
END

IF WEIGHT #3
~NumTimesTalkedTo(0)
 RandomNum(5,3)~ THEN BEGIN 2
  SAY @33096
  IF ~Global("60Know_Black_Flower","GLOBAL",1)~ THEN REPLY @33097 GOTO 7
  IF ~~ THEN REPLY @33098 GOTO 5
  IF ~~ THEN REPLY @33099 GOTO 5
  IF ~~ THEN REPLY @33100 GOTO 5
  IF ~~ THEN REPLY @33090 GOTO 6
END

IF WEIGHT #4
~NumTimesTalkedTo(0)
 RandomNum(5,4)~ THEN BEGIN 3
  SAY @33101
  IF ~~ THEN REPLY @33102 GOTO 5
  IF ~Global("60Know_Challenges","GLOBAL",1)~ THEN REPLY @33103 GOTO 7
  IF ~~ THEN REPLY @33104 GOTO 5
  IF ~~ THEN REPLY @33105 GOTO 5
  IF ~~ THEN REPLY @33090 GOTO 6
END

IF WEIGHT #5
~NumTimesTalkedTo(0)
 RandomNum(5,5)~ THEN BEGIN 4
  SAY @33106
  IF ~Global("60Know_Challenges","GLOBAL",1)~ THEN REPLY @33107 GOTO 7
  IF ~~ THEN REPLY @33108 GOTO 5
  IF ~~ THEN REPLY @33109 GOTO 5
  IF ~~ THEN REPLY @33110 GOTO 5
  IF ~~ THEN REPLY @33090 GOTO 6
END

IF ~~ THEN BEGIN 5
  SAY @33111
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @33113
  IF ~CheckStatGT(LastTalkedToBy,15,CHR)~ THEN REPLY @33114 GOTO 8
  IF ~~ THEN REPLY @33115 GOTO 5
  IF ~~ THEN REPLY @33116 GOTO 5
  IF ~~ THEN REPLY @33117 GOTO 5
END

IF ~~ THEN BEGIN 7
  SAY @33118
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8
  SAY @33119
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~NumTimesTalkedToGT(0)~ THEN BEGIN 9
  SAY @33120
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~!Global("6051_Wearing_Robes","GLOBAL",6)~ THEN BEGIN 10
  SAY @33121
  IF ~~ THEN DO ~Enemy()~ EXIT
END
