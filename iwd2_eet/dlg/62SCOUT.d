BEGIN ~62SCOUT~

IF ~!Global("SPRITE_IS_DEADGorg","GLOBAL",1)~ THEN BEGIN 0
  SAY @25645
  IF ~~ THEN EXIT
END

IF ~Global("SPRITE_IS_DEADGorg","GLOBAL",1)~ THEN BEGIN 1
  SAY @40964
  IF ~~ THEN DO ~Enemy()~ EXIT
END
