BEGIN ~50MADAE~

IF ~~ THEN BEGIN 0
  SAY @11483
  IF ~~ THEN EXTERN ~50ISAIR~ 1
END

IF ~~ THEN BEGIN 1
  SAY @11485
  IF ~~ THEN EXTERN ~50ISAIR~ 4
END

IF ~~ THEN BEGIN 2
  SAY @11486
  IF ~~ THEN EXTERN ~50ISAIR~ 7
END

IF ~~ THEN BEGIN 3
  SAY @11492
  IF ~~ THEN EXTERN ~50ISAIR~ 12
END

IF ~~ THEN BEGIN 4
  SAY @11493
  IF ~~ THEN REPLY @6587 DO ~StartCutSceneMode()
                             StartCutScene("50cTwin1")~ EXIT
END

IF ~True()~ THEN BEGIN 5
  SAY @11494
  IF ~~ THEN EXIT
END