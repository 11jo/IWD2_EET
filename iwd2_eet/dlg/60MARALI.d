BEGIN ~60MARALI~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @33364
  IF ~~ THEN REPLY @33365 GOTO 1
  IF ~Race(LastTalkedToBy,HALFORC)~ THEN REPLY @33366 GOTO 1
  IF ~Race(LastTalkedToBy,GNOME)~ THEN REPLY @33367 GOTO 1
  IF ~Race(LastTalkedToBy,HALFLING)~ THEN REPLY @33368 GOTO 1
  IF ~~ THEN REPLY @33369 GOTO 1
  IF ~~ THEN REPLY @33370 GOTO 2
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @33375
  IF ~~ THEN REPLY @33376 GOTO 6
  IF ~~ THEN REPLY @33377 GOTO 7
  IF ~~ THEN REPLY @33370 GOTO 2
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @33378
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @33379
  IF ~~ THEN REPLY @33380 GOTO 2
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @33382
  IF ~~ THEN REPLY @33380 GOTO 2
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @33383
  IF ~~ THEN REPLY @33380 GOTO 2
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @33384
  IF ~~ THEN REPLY @33380 GOTO 2
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @33385
  IF ~~ THEN REPLY @33380 GOTO 2
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @33386
  IF ~~ THEN REPLY @33380 GOTO 2
  IF ~~ THEN REPLY @33371 GOTO 3
  IF ~~ THEN REPLY @33372 GOTO 4
  IF ~~ THEN REPLY @33373 GOTO 5
  IF ~~ THEN REPLY @33374 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @33387
  IF ~~ THEN EXTERN ~11OSWALD~ 52
END

IF ~~ THEN BEGIN 10
  SAY @33389
  IF ~~ THEN EXTERN ~11OSWALD~ 73
END
