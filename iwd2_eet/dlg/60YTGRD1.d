BEGIN ~60YTGRD1~

IF ~True()~ THEN BEGIN 0
  SAY @38386
  IF ~~ THEN EXTERN ~60YTGRD2~ 0
END

IF ~~ THEN BEGIN 1
  SAY @38388
  IF ~~ THEN EXTERN ~60YTGRD2~ 1
END

IF ~~ THEN BEGIN 2
  SAY @38389
  IF ~~ THEN EXTERN ~60YTGRD2~ 2
END
