BEGIN ~41CMOLB1~

IF ~TimeOfDay(DAY)~ THEN BEGIN 0
  SAY @40979
  IF ~~ THEN EXTERN ~41CMOLB2~ 0
END

IF ~!TimeOfDay(DAY)~ THEN BEGIN 1
  SAY @40981
  IF ~~ THEN EXTERN ~41CMOLB2~ 1
END

IF ~~ THEN BEGIN 2
  SAY @40982
  IF ~~ THEN EXTERN ~41CMOLB2~ 3
END

IF ~~ THEN BEGIN 3
  SAY @40983
  IF ~~ THEN EXTERN ~41CMOLB2~ 4
END

IF ~~ THEN BEGIN 4
  SAY @40984
  IF ~~ THEN EXTERN ~41CMOLB2~ 4
END

IF ~~ THEN BEGIN 5
  SAY @40985
  IF ~Global("40SherincalAttack","GLOBAL",1)~ THEN GOTO 11
  IF ~Global("40SherincalAttack","GLOBAL",0)~ THEN EXTERN ~41CMOLB2~ 6
END

IF ~~ THEN BEGIN 6
  SAY @40986
  IF ~Global("40SherincalAttack","GLOBAL",1)~ THEN GOTO 11
  IF ~Global("40SherincalAttack","GLOBAL",0)~ THEN EXTERN ~41CMOLB2~ 6
END

IF ~~ THEN BEGIN 7
  SAY @40987
  IF ~Global("40SherincalAttack","GLOBAL",1)~ THEN GOTO 11
  IF ~Global("40SherincalAttack","GLOBAL",0)~ THEN EXTERN ~41CMOLB2~ 6
END

IF ~~ THEN BEGIN 8
  SAY @40988
  IF ~Global("40SherincalAttack","GLOBAL",1)~ THEN GOTO 11
  IF ~Global("40SherincalAttack","GLOBAL",0)~ THEN EXTERN ~41CMOLB2~ 6
END

IF ~~ THEN BEGIN 9
  SAY @40989
  IF ~Global("40SherincalAttack","GLOBAL",1)~ THEN GOTO 11
  IF ~Global("40SherincalAttack","GLOBAL",0)~ THEN EXTERN ~41CMOLB2~ 6
END

IF ~~ THEN BEGIN 10
  SAY @40990
  IF ~Global("40SherincalAttack","GLOBAL",1)~ THEN GOTO 11
  IF ~Global("40SherincalAttack","GLOBAL",0)~ THEN EXTERN ~41CMOLB2~ 6
END

IF ~~ THEN BEGIN 11
  SAY @40991
  IF ~~ THEN EXTERN ~41CMOLB2~ 5
END

IF ~~ THEN BEGIN 12
  SAY @40992
  IF ~~ THEN EXTERN ~41CMOLB2~ 7
END