BEGIN ~12MENON~

IF ~True()~ THEN BEGIN 0
  SAY @15323
  IF ~Global("Lumber_Quest","GLOBAL",0)~ THEN REPLY @15327 DO ~SetGlobal("Know_Menon","GLOBAL",1)~ GOTO 1
  IF ~Global("Lumber_Quest","GLOBAL",1)~ THEN REPLY @15328 DO ~SetGlobal("Know_Menon","GLOBAL",1)~ GOTO 2
  IF ~Global("Arrow_Quest","GLOBAL",1)~ THEN REPLY @15344 DO ~SetGlobal("Know_Menon","GLOBAL",1)~ GOTO 3
  IF ~GlobalGT("Lumber_Quest","GLOBAL",0)~ THEN REPLY @15345 DO ~SetGlobal("Know_Menon","GLOBAL",1)~ GOTO 4
  IF ~Global("Know_Menon","GLOBAL",1)~ THEN REPLY @15346 GOTO 4
  IF ~~ THEN REPLY @15347 DO ~SetGlobal("Know_Menon","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 1
  SAY @15348
  IF ~~ THEN REPLY @15349 GOTO 4
  IF ~~ THEN REPLY @15350 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @15351
  IF ~~ THEN REPLY @15349 GOTO 4
  IF ~~ THEN REPLY @15352 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @15353
  IF ~~ THEN REPLY @15349 GOTO 4
  IF ~~ THEN REPLY @15352 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15356
  IF ~~ THEN REPLY @15359 GOTO 5
  IF ~~ THEN REPLY @15360 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @15361
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @15363
  IF ~~ THEN REPLY @15364 GOTO 8
  IF ~~ THEN REPLY @15360 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @15365
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @15366
  IF ~~ THEN REPLY @15367 GOTO 9
  IF ~~ THEN REPLY @15368 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @15369
  IF ~~ THEN REPLY @15370 EXIT
END
