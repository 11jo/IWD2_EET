BEGIN ~60MADAE~

IF ~~ THEN BEGIN 0
  SAY @29361
  IF ~~ THEN EXTERN ~61ISAIR~ 1
END

IF ~~ THEN BEGIN 1
  SAY @29363
  IF ~~ THEN REPLY @29364 EXTERN ~61ISAIR~ 11
  IF ~~ THEN REPLY @29365 EXTERN ~61ISAIR~ 11
  IF ~~ THEN REPLY @29366 EXTERN ~61ISAIR~ 11
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 2
  SAY @29368
  IF ~~ THEN REPLY @29369 EXTERN ~61ISAIR~ 12
  IF ~~ THEN REPLY @29370 EXTERN ~61ISAIR~ 12
  IF ~~ THEN REPLY @29371 EXTERN ~61ISAIR~ 12
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 3
  SAY @29372
  IF ~~ THEN REPLY @29373 EXTERN ~61ISAIR~ 12
  IF ~~ THEN REPLY @29374 EXTERN ~61ISAIR~ 12
  IF ~~ THEN REPLY @29375 GOTO 13
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 4
  SAY @29376
  IF ~~ THEN REPLY @29377 GOTO 13
  IF ~~ THEN REPLY @29378 GOTO 13
  IF ~~ THEN REPLY @29379 GOTO 13
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 5
  SAY @29380
  IF ~~ THEN REPLY @29381 GOTO 13
  IF ~~ THEN REPLY @29382 GOTO 13
  IF ~~ THEN REPLY @29383 GOTO 13
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 6
  SAY @29384
  IF ~~ THEN REPLY @29385 EXTERN ~61ISAIR~ 14
  IF ~~ THEN REPLY @29386 GOTO 13
  IF ~~ THEN REPLY @29387 GOTO 13
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 7
  SAY @29388
  IF ~~ THEN REPLY @29389 EXTERN ~61ISAIR~ 11
  IF ~~ THEN REPLY @29390 GOTO 13
  IF ~~ THEN REPLY @29391 GOTO 13
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 8
  SAY @29392
  IF ~~ THEN REPLY @29389 EXTERN ~61ISAIR~ 11
  IF ~~ THEN REPLY @29390 GOTO 13
  IF ~~ THEN REPLY @29391 GOTO 13
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 9
  SAY @29393
  IF ~~ THEN REPLY @29394 EXTERN ~61ISAIR~ 15
  IF ~~ THEN REPLY @29395 EXTERN ~61ISAIR~ 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @29396 EXTERN ~61ISAIR~ 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @29396 EXTERN ~61ISAIR~ 16
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 10
  SAY @29397
  IF ~~ THEN REPLY @29394 EXTERN ~61ISAIR~ 15
  IF ~~ THEN REPLY @29395 EXTERN ~61ISAIR~ 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @29396 EXTERN ~61ISAIR~ 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @29396 EXTERN ~61ISAIR~ 16
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 11
  SAY @29398
  IF ~~ THEN REPLY @29394 EXTERN ~61ISAIR~ 15
  IF ~~ THEN REPLY @29395 EXTERN ~61ISAIR~ 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_AASIMAR)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",1))~ THEN REPLY @29396 EXTERN ~61ISAIR~ 16
  IF ~//Subrace(LastTalkedToBy,HUMAN_TIEFLING)
      TriggerOverride(LastTalkedToBy,Global("SUBRACE","LOCALS",2))~ THEN REPLY @29396 EXTERN ~61ISAIR~ 16
  IF ~~ THEN REPLY @29367 GOTO 17
END

IF ~~ THEN BEGIN 12
  SAY @29399
  IF ~~ THEN EXTERN ~61ISAIR~ 19
END

IF ~~ THEN BEGIN 13
  SAY @29400
  IF ~~ THEN EXTERN ~61ISAIR~ 19
END

IF ~~ THEN BEGIN 14
  SAY @29401
  IF ~~ THEN EXTERN ~61ISAIR~ 17
END

IF ~~ THEN BEGIN 15
  SAY @29402
  IF ~~ THEN EXTERN ~61ISAIR~ 18
END

IF ~~ THEN BEGIN 16
  SAY @29403
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @29404
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @29405
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("63cFB02")~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @29406
  IF ~~ THEN EXTERN ~61ISAIR~ 22
END

IF ~~ THEN BEGIN 20
  SAY @29407
  IF ~~ THEN EXTERN ~61ISAIR~ 24
END

IF ~~ THEN BEGIN 21
  SAY @29408
  IF ~~ THEN EXTERN ~64ORRICK~ 67
END

IF ~~ THEN BEGIN 22
  SAY @29409
  IF ~~ THEN EXTERN ~64ORRICK~ 69
END

IF ~~ THEN BEGIN 23
  SAY @29410
  IF ~~ THEN EXTERN ~64ORRICK~ 70
END

IF ~~ THEN BEGIN 24
  SAY @29411
  IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
  SAY @29412
  IF ~~ THEN EXTERN ~60ISELOR~ 51
END

IF ~~ THEN BEGIN 26
  SAY @29413
  IF ~~ THEN EXTERN ~60ISELOR~ 52
END

IF ~~ THEN BEGIN 27
  SAY @29414
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
  SAY @29415
  IF ~~ THEN DO ~SetGlobal("60Party_Entered","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("60CCMI2")~ EXIT
END

IF ~Global("60Party_Entered","GLOBAL",1)~ THEN BEGIN 29
  SAY @29416
  IF ~~ THEN REPLY @29417 GOTO 30
  IF ~~ THEN REPLY @29418 GOTO 31
  IF ~~ THEN REPLY @29419 GOTO 32
  IF ~~ THEN REPLY @29420 GOTO 33
END

IF ~~ THEN BEGIN 30
  SAY @29421
  IF ~~ THEN EXTERN ~60ISELOR~ 53
END

IF ~~ THEN BEGIN 31
  SAY @29424
  IF ~~ THEN EXTERN ~60ISELOR~ 53
END

IF ~~ THEN BEGIN 32
  SAY @29425
  IF ~~ THEN EXTERN ~60ISELOR~ 53
END

IF ~~ THEN BEGIN 33
  SAY @29426
  IF ~~ THEN EXTERN ~60ISELOR~ 53
END

IF ~~ THEN BEGIN 34
  SAY @29427
  IF ~~ THEN DO ~Enemy()
                 StartCutSceneMode()
                 StartCutScene("60CCMI3")~ EXIT
END

IF ~~ THEN BEGIN 35
  SAY @32053
  IF ~~ THEN EXIT
END
