BEGIN ~53MYRVEK~

IF WEIGHT #1
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @22683
  IF ~~ THEN REPLY @22684 GOTO 1
  IF ~~ THEN REPLY @22685 GOTO 2
  IF ~~ THEN REPLY @22686 GOTO 3
  IF ~~ THEN REPLY @22687 GOTO 5
  IF ~~ THEN REPLY @22688 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @22689
  IF ~~ THEN REPLY @22690 GOTO 6
  IF ~~ THEN REPLY @22691 DO ~StartStore("53Myrvek",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22687 GOTO 5
  IF ~~ THEN REPLY @22688 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @22692
  IF ~~ THEN REPLY @22691 DO ~StartStore("53Myrvek",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22687 GOTO 5
  IF ~~ THEN REPLY @22688 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @22693
  IF ~~ THEN EXTERN ~53WODE~ 7
END

IF ~~ THEN BEGIN 4
  SAY @22697
  IF ~~ THEN REPLY @22698 GOTO 7
  IF ~~ THEN REPLY @22699 DO ~StartStore("53Myrvek",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22687 GOTO 5
  IF ~~ THEN REPLY @22688 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @22700
  IF ~~ THEN REPLY @22698 GOTO 7
  IF ~~ THEN REPLY @22699 DO ~StartStore("53Myrvek",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22688 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @22701
  IF ~~ THEN REPLY @22698 GOTO 7
  IF ~~ THEN REPLY @22699 DO ~StartStore("53Myrvek",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22688 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @22702
  IF ~~ THEN REPLY @22699 DO ~StartStore("53Myrvek",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @22703 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @22688 EXIT
END

IF WEIGHT #2
~NumTimesTalkedToGT(0)~ THEN BEGIN 8
  SAY @22704
  IF ~HPPercentGT(LastTalkedToBy,49)~ THEN REPLY @22691 DO ~StartStore("53Myrvek",LastTalkedToBy)~ EXIT
  IF ~HPPercentLT(LastTalkedToBy,50)~ THEN REPLY @22691 DO ~Enemy()~ GOTO 9
  IF ~~ THEN REPLY @22687 GOTO 5
  IF ~~ THEN REPLY @22688 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @22705
  IF ~~ THEN EXTERN ~53WODE~ 8
END

IF ~~ THEN BEGIN 10
  SAY @22706
  IF ~~ THEN EXTERN ~53HEGGR~ 12
END

IF ~~ THEN BEGIN 11
  SAY @22707
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12
  SAY @22708
  IF ~~ THEN EXTERN ~53WODE~ 4
END

IF ~~ THEN BEGIN 13
  SAY @22709
  IF ~~ THEN EXTERN ~53WODE~ 5
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 14
  SAY @27284
  IF ~~ THEN EXIT
END
