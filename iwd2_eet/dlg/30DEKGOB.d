BEGIN ~30DEKGOB~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @30901
  IF ~~ THEN REPLY @30902 EXIT
  IF ~~ THEN REPLY @30903 DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @30904
  IF ~~ THEN REPLY @30905 EXIT
  IF ~~ THEN REPLY @30906 DO ~Enemy()~ EXIT
END