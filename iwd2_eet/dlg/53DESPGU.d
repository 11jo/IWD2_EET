BEGIN ~53DESPGU~

IF WEIGHT #1
~RandomNum(12,1)~ THEN BEGIN 0
  SAY @22198
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~RandomNum(12,2)~ THEN BEGIN 1
  SAY @22200
  IF ~~ THEN EXIT
END

IF WEIGHT #3
~RandomNum(12,3)~ THEN BEGIN 2
  SAY @22201
  IF ~~ THEN EXIT
END

IF WEIGHT #4
~RandomNum(12,4)~ THEN BEGIN 3
  SAY @22202
  IF ~~ THEN EXIT
END

IF WEIGHT #5
~RandomNum(12,5)~ THEN BEGIN 4
  SAY @22203
  IF ~~ THEN EXIT
END

IF WEIGHT #6
~RandomNum(12,6)~ THEN BEGIN 5
  SAY @22204
  IF ~~ THEN EXIT
END

IF WEIGHT #7
~RandomNum(12,7)~ THEN BEGIN 6
  SAY @22205
  IF ~~ THEN EXIT
END

IF WEIGHT #8
~RandomNum(12,8)~ THEN BEGIN 7
  SAY @22206
  IF ~~ THEN EXIT
END

IF WEIGHT #9
~RandomNum(12,9)~ THEN BEGIN 8
  SAY @22207
  IF ~~ THEN EXIT
END

IF WEIGHT #10
~RandomNum(12,10)~ THEN BEGIN 9
  SAY @22268
  IF ~~ THEN EXIT
END

IF WEIGHT #11
~RandomNum(12,11)~ THEN BEGIN 10
  SAY @22269
  IF ~~ THEN EXIT
END

IF WEIGHT #12
~RandomNum(12,12)~ THEN BEGIN 11
  SAY @22270
  IF ~~ THEN EXIT
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 12
  SAY @38810
  IF ~~ THEN EXIT
END
