BEGIN ~61IZBELA~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @25723
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @25725
  IF ~~ THEN EXIT
END
