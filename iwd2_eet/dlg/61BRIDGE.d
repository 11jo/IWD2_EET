BEGIN ~61BRIDGE~

IF ~HPPercent(Myself,100)~ THEN BEGIN 0
  SAY @38230
  IF ~~ THEN EXIT
END

IF ~HPPercentLT(Myself,100)~ THEN BEGIN 1
  SAY @38232
  IF ~~ THEN EXIT
END
