BEGIN ~67BLOOK~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @35288
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @35288
  IF ~~ THEN EXIT
END
