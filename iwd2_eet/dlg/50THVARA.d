BEGIN ~50THVARA~

IF ~True()~ THEN BEGIN 0
  SAY @6573
  IF ~~ THEN EXTERN ~50GNTFO~ 0
END

IF ~~ THEN BEGIN 1
  SAY @6575
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
  SAY @6576
  IF ~~ THEN EXTERN ~50GNTFO~ 1
END

IF ~~ THEN BEGIN 3
  SAY @6577
  IF ~~ THEN EXTERN ~50GNTFO~ 2
END

IF ~~ THEN BEGIN 4
  SAY @6578
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @6579
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Class(LastTalkedToBy,CLERIC_ALL)
      !Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @37455 GOTO 6
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37456 GOTO 6
  IF ~~ THEN REPLY @6580 GOTO 6
  IF ~!Alignment(LastTalkedToBy,MASK_LAWFUL)~ THEN REPLY @6581 GOTO 6
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @6582 EXTERN ~50GNTFO~ 4
  IF ~OR(2)
  	    !Class(LastTalkedToBy,PALADIN_ALL)
  	    Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @6583 EXTERN ~50GNTFO~ 4
END

IF ~~ THEN BEGIN 6
  SAY @6584
  IF ~OR(2)
        Class(LastTalkedToBy,PALADIN_ALL)
        Class(LastTalkedToBy,CLERIC_ALL)~ THEN REPLY @37457 EXTERN ~50GNTFO~ 3
  IF ~Class(LastTalkedToBy,CLERIC_ALL)
      Alignment(LastTalkedToBy,MASK_EVIL)~ THEN REPLY @37458 EXTERN ~50GNTFO~ 3
  IF ~~ THEN REPLY @6585 DO ~AddJournalEntry(@6572,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @6586 DO ~AddJournalEntry(@6572,QUEST)~ GOTO 7
  IF ~~ THEN REPLY @6587 DO ~AddJournalEntry(@6572,QUEST)~ EXTERN ~50GNTFO~ 3
END

IF ~~ THEN BEGIN 7
  SAY @6588
  IF ~~ THEN EXTERN ~50GNTFO~ 3
END

IF ~~ THEN BEGIN 8
  SAY @6589
  IF ~CheckStatLT(LastTalkedToBy,15,CHR)~ THEN DO ~Enemy()~ EXIT
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @37851 DO ~Enemy()~ EXTERN ~50GNTFO~ 5
  IF ~CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @37852 DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @25710
  IF ~~ THEN GOTO 6
END
