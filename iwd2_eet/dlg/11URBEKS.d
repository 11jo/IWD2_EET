BEGIN ~11URBEKS~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6299
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 1
  SAY @6301
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2
  SAY @6302
  IF ~~ THEN EXTERN ~11MAXIEL~ 2
END
