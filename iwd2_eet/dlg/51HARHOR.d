BEGIN ~51HARHOR~

IF WEIGHT #3
~//!SubRace(LastTalkedToBy,DWARF_GRAY)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 0
  SAY @8643
  IF ~~ THEN REPLY @8644 DO ~SetGlobal("51Harhord","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @8645 DO ~SetGlobal("51Harhord","GLOBAL",1)~ GOTO 1
  IF ~~ THEN REPLY @8646 DO ~SetGlobal("51Harhord","GLOBAL",1)~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @8647
  IF ~~ THEN EXTERN ~51BARUD~ 0
END

IF WEIGHT #1
~See([ENEMY])
 //!SubRace(LastTalkedToBy,DWARF_GRAY)
 !TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 2
  SAY @8649
  IF ~~ THEN EXIT
END

IF WEIGHT #2
~//SubRace(LastTalkedToBy,DWARF_GRAY)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 3
  SAY @8643
  IF ~~ THEN REPLY @8644 GOTO 4
  IF ~~ THEN REPLY @8645 GOTO 5
  IF ~~ THEN REPLY @8646 EXIT
END

IF ~~ THEN BEGIN 4
  SAY @25784
  IF ~~ THEN REPLY @8645 GOTO 5
  IF ~~ THEN REPLY @8646 EXIT
END

IF ~~ THEN BEGIN 5
  SAY @25782
  IF ~~ THEN REPLY @8644 GOTO 4
  IF ~~ THEN REPLY @8646 EXIT
END

IF WEIGHT #0
~See([ENEMY])
 //SubRace(LastTalkedToBy,DWARF_GRAY)
 TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",6))~ THEN BEGIN 6
  SAY @36481
  IF ~~ THEN EXIT
END
