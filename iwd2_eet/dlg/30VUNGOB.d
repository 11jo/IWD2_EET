BEGIN ~30VUNGOB~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @35489
  IF ~~ THEN REPLY @35490 EXIT
  IF ~~ THEN REPLY @35491 DO ~Enemy()~ EXIT
END

IF WEIGHT #0
~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @35492
  IF ~~ THEN REPLY @35493 EXIT
  IF ~~ THEN REPLY @35494 DO ~Enemy()~ EXIT
END