BEGIN ~21GAERNT~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @2484
  IF ~~ THEN REPLY @2485 DO ~AddJournalEntry(@2480,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @2486 DO ~AddJournalEntry(@2481,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @2487 GOTO 4
END

IF ~~ THEN BEGIN 1
  SAY @2488
  IF ~~ THEN REPLY @2489 GOTO 2
  IF ~~ THEN REPLY @2490 DO ~AddJournalEntry(@2482,QUEST)~ GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @2491
  IF ~~ THEN REPLY @2492 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @2493
  IF ~~ THEN REPLY @2492 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @2494
  IF ~~ THEN REPLY @2485 GOTO 1
  IF ~~ THEN REPLY @2486 GOTO 3
END
