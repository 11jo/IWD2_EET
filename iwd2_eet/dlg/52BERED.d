BEGIN ~52BERED~

IF WEIGHT #1
~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @9879
  IF ~~ THEN REPLY @9880 GOTO 3
  IF ~~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9882 GOTO 2
  IF ~~ THEN REPLY @9883 EXIT
END

IF WEIGHT #2
~True()~ THEN BEGIN 1
  SAY @9892
  IF ~~ THEN REPLY @9880 GOTO 3
  IF ~~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9882 GOTO 2
  IF ~~ THEN REPLY @9883 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @9895
  IF ~~ THEN REPLY @9897 GOTO 3
  IF ~~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9898 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @9899
  IF ~~ THEN REPLY @9900 GOTO 4
  IF ~~ THEN REPLY @9901 GOTO 15
  IF ~Global("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9902 GOTO 18
  IF ~GlobalGT("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9902 GOTO 20
  IF ~~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9910 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @9911
  IF ~~ THEN REPLY @9912 GOTO 5
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @9919
  IF ~~ THEN REPLY @9912 GOTO 6
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @9920
  IF ~~ THEN REPLY @9912 GOTO 7
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 7
  SAY @9921
  IF ~~ THEN REPLY @9922 GOTO 8
  IF ~~ THEN REPLY @9912 GOTO 9
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 8
  SAY @9924
  IF ~~ THEN REPLY @9912 GOTO 9
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 9
  SAY @9926
  IF ~~ THEN REPLY @9912 GOTO 10
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @9927
  IF ~~ THEN REPLY @9928 GOTO 11
  IF ~~ THEN REPLY @9912 GOTO 12
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @9929
  IF ~Global("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9930 DO ~SetGlobal("52Bered","GLOBAL",1)~ FLAGS 0x200 GOTO 18 /*true*/
  IF ~GlobalGT("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9930 DO ~SetGlobal("52Bered","GLOBAL",1)~ FLAGS 0x200 GOTO 20 /*true*/
  IF ~~ THEN REPLY @9931 GOTO 12
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 12
  SAY @9932
  IF ~~ THEN REPLY @9933 GOTO 13
  IF ~~ THEN REPLY @9934 GOTO 14
END

IF ~~ THEN BEGIN 13
  SAY @9935
  IF ~~ THEN REPLY @9901 GOTO 15
  IF ~Global("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9902 GOTO 18
  IF ~GlobalGT("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9902 GOTO 20
  IF ~~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9936 EXIT
END

IF ~~ THEN BEGIN 14
  SAY @9938
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15
  SAY @9940
  IF ~~ THEN REPLY @9912 GOTO 16
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 16
  SAY @9941
  IF ~~ THEN REPLY @9912 GOTO 17
  IF ~~ THEN REPLY @9918 EXIT
END

IF ~~ THEN BEGIN 17
  SAY @9942
  IF ~~ THEN REPLY @9900 GOTO 4
  IF ~Global("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9902 GOTO 18
  IF ~GlobalGT("52Aruma_Gone","GLOBAL",0)~ THEN REPLY @9902 GOTO 20
  IF ~~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9943 EXIT
END

IF ~~ THEN BEGIN 18
  SAY @9944
  IF ~~ THEN REPLY @9945 DO ~AddJournalEntry(@9878,QUEST)~ GOTO 19
  IF ~Global("52Bered","GLOBAL",1)~ THEN REPLY @9931 DO ~SetGlobal("52Bered","GLOBAL",0)~ GOTO 12
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9900 GOTO 4
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9901 GOTO 15
  IF ~Global("52Bered","GLOBAL",1)~ THEN REPLY @9918 DO ~SetGlobal("52Bered","GLOBAL",0)~ EXIT
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9943 EXIT
END

IF ~~ THEN BEGIN 19
  SAY @9946
  IF ~Global("52Bered","GLOBAL",1)~ THEN REPLY @9931 DO ~SetGlobal("52Bered","GLOBAL",0)~ GOTO 12
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9900 GOTO 4
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9901 GOTO 15
  IF ~Global("52Bered","GLOBAL",1)~ THEN REPLY @9918 DO ~SetGlobal("52Bered","GLOBAL",0)~ EXIT
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9943 EXIT
END

IF ~~ THEN BEGIN 20
  SAY @9948
  IF ~~ THEN REPLY @9945 DO ~AddJournalEntry(@9878,QUEST)~ GOTO 19
  IF ~Global("52Bered","GLOBAL",1)~ THEN REPLY @9931 DO ~SetGlobal("52Bered","GLOBAL",0)~ GOTO 12
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9900 GOTO 4
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9901 GOTO 15
  IF ~Global("52Bered","GLOBAL",1)~ THEN REPLY @9918 DO ~SetGlobal("52Bered","GLOBAL",0)~ EXIT
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~!Global("52Bered","GLOBAL",1)~ THEN REPLY @9943 EXIT
END

IF WEIGHT #0
~GlobalGT("52Aruma_Gone","GLOBAL",0)~ THEN BEGIN 21
  SAY @9949
  IF ~~ THEN REPLY @9880 GOTO 3
  IF ~~ THEN REPLY @9881 DO ~StartStore("52Bered",LastTalkedToBy)~ EXIT
  IF ~~ THEN REPLY @9882 GOTO 2
  IF ~~ THEN REPLY @9883 EXIT
END