BEGIN ~30GOBWLP~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @30907
  IF ~~ THEN REPLY @30908 EXIT
  IF ~~ THEN REPLY @30909 DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @30910
  IF ~~ THEN REPLY @30911 EXIT
  IF ~~ THEN REPLY @30912 DO ~Enemy()~ EXIT
END
