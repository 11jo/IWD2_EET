BEGIN ~53ELDER~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22279
  IF ~~ THEN REPLY @22280 GOTO 1
  IF ~~ THEN REPLY @22284 GOTO 4
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22281 DO ~Enemy()
                                                                 AddJournalEntry(@22278,QUEST)~ GOTO 2
  IF ~OR(2)
        Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,RANGER_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @22282 DO ~Enemy()
                                                           AddJournalEntry(@22278,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @22285 DO ~Enemy()
                              AddJournalEntry(@22278,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 1
  SAY @22286
  IF ~~ THEN REPLY @22284 GOTO 4
  IF ~Alignment(LastTalkedToBy,MASK_GOOD)~ THEN REPLY @22281 DO ~Enemy()
                                                                 AddJournalEntry(@22278,QUEST)~ GOTO 2
  IF ~OR(2)
        Class(LastTalkedToBy,DRUID_ALL)
        Class(LastTalkedToBy,RANGER_ALL)
      !Class(LastTalkedToBy,SHAMAN)~ THEN REPLY @22282 DO ~Enemy()
                                                           AddJournalEntry(@22278,QUEST)~ GOTO 3
  IF ~~ THEN REPLY @22285 DO ~Enemy()
                              AddJournalEntry(@22278,QUEST)~ GOTO 5
END

IF ~~ THEN BEGIN 2
  SAY @22287
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3
  SAY @22289
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4
  SAY @22290
  IF ~CheckStatLT(LastTalkedToBy,16,CON)~ THEN DO ~Enemy()
                                                   AddJournalEntry(@22278,QUEST)~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,15,CON)~ THEN REPLY @422 DO ~SetGlobal("53ElderB_Permission","GLOBAL",1)~ GOTO 10
  IF ~CheckStatGT(LastTalkedToBy,15,CON)~ THEN REPLY @38552 DO ~Enemy()
                                                                AddJournalEntry(@22278,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22291
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6
  SAY @22292
  IF ~~ THEN EXTERN ~53ABDOSH~ 1
END

IF ~~ THEN BEGIN 7
  SAY @22298
  IF ~~ THEN EXTERN ~53ABDOSH~ 2
END

IF ~~ THEN BEGIN 8
  SAY @22299
  IF ~~ THEN EXTERN ~53ZEPH~ 2
END

IF ~True()~ THEN BEGIN 9
  SAY @38551
  IF ~~ THEN DO ~Enemy()
                 AddJournalEntry(@22278,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @38554
  IF ~~ THEN EXIT
END
