BEGIN ~11ULBREC~

IF WEIGHT #0
~NumberOfTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6193
  IF ~~ THEN REPLY @6195 DO ~SetGlobal("Know_Ulbrec","GLOBAL",1)
                             AddJournalEntry(@797,QUEST)~ GOTO 1
  IF ~~ THEN REPLY @6196 DO ~SetGlobal("Know_Ulbrec","GLOBAL",1)
                             AddJournalEntry(@797,QUEST)~ GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @6197
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @6198 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @6200 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @6201 GOTO 2
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @6202 GOTO 11
END

IF ~~ THEN BEGIN 2
  SAY @6203
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
  SAY @6205
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @6206
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @6198 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @6207 GOTO 5
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @6208 GOTO 6
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @6202 GOTO 11
END

IF ~~ THEN BEGIN 5
  SAY @6209
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6
  SAY @6210
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
  SAY @6211
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
  SAY @6212
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @6213
  IF ~~ THEN REPLY @6214 EXIT
  IF ~~ THEN REPLY @6215 EXIT
END

IF WEIGHT #1
~Global("Know_Ulbrec","GLOBAL",1)
 Global("Told_Ulbrec_Goblins","GLOBAL",0)~ THEN BEGIN 10
  SAY @6216
  IF ~Global("Dock_Goblin_Quest","GLOBAL",1)~ THEN REPLY @6202 GOTO 11
  IF ~Global("Dock_Goblin_Quest","GLOBAL",0)~ THEN REPLY @6217 EXIT
END

IF ~~ THEN BEGIN 11
  SAY @6218
  IF ~~ THEN DO ~SetGlobal("Told_Ulbrec_Goblins","GLOBAL",1)~ GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @6220
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
  SAY @6221
  IF ~~ THEN REPLY @6222 GOTO 14
END

IF ~~ THEN BEGIN 14
  SAY @6224
  IF ~~ THEN REPLY @6226 GOTO 15
END

IF ~~ THEN BEGIN 15
  SAY @6228
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
  SAY @6229
  IF ~~ THEN REPLY @6230 GOTO 17
END

IF ~~ THEN BEGIN 17
  SAY @6233
  IF ~~ THEN REPLY @6234 GOTO 18
  IF ~~ THEN REPLY @6235 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
END

IF ~~ THEN BEGIN 18
  SAY @6236
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19
  SAY @6237
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
  SAY @6238
  IF ~~ THEN REPLY @6239 GOTO 23
  IF ~~ THEN REPLY @6240 GOTO 21
  IF ~~ THEN REPLY @6241 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
  IF ~~ THEN REPLY @6242 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
END

IF ~~ THEN BEGIN 21
  SAY @6243
  IF ~~ THEN REPLY @6244 GOTO 22
  IF ~~ THEN REPLY @6245 GOTO 23
  IF ~~ THEN REPLY @6241 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
  IF ~~ THEN REPLY @6242 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
END

IF ~~ THEN BEGIN 22
  SAY @6246
  IF ~~ THEN REPLY @6247 GOTO 23
  IF ~~ THEN REPLY @6241 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
  IF ~~ THEN REPLY @6242 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
END

IF ~~ THEN BEGIN 23
  SAY @6260
  IF ~~ THEN REPLY @6262 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 25
  IF ~~ THEN REPLY @6263 GOTO 24
  IF ~~ THEN REPLY @6241 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
  IF ~~ THEN REPLY @6242 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
END

IF ~~ THEN BEGIN 24
  SAY @6264
  IF ~~ THEN REPLY @6265 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 25
  IF ~~ THEN REPLY @6241 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
  IF ~~ THEN REPLY @6235 DO ~AddJournalEntry(@6178,QUEST)
                             EraseJournalEntry(@1479)
                             EraseJournalEntry(@27682)
                             EraseJournalEntry(@27686)
                             EraseJournalEntry(@27683)
                             EraseJournalEntry(@27684)
                             EraseJournalEntry(@27685)
                             EraseJournalEntry(@15154)
                             EraseJournalEntry(@797)
                             SetQuestDone(@27866)~ GOTO 26
END

IF ~~ THEN BEGIN 25
  SAY @6266
  IF ~~ THEN REPLY @6267 DO ~SetGlobal("Ulbrec_Gate","GLOBAL",1)~ GOTO 27
  IF ~~ THEN REPLY @6268 DO ~SetGlobal("Ulbrec_Gate","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 26
  SAY @6269
  IF ~~ THEN REPLY @6267 DO ~SetGlobal("Ulbrec_Gate","GLOBAL",1)~ GOTO 27
  IF ~~ THEN REPLY @6268 DO ~SetGlobal("Ulbrec_Gate","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 27
  SAY @6270
  IF ~~ THEN REPLY @6271 GOTO 29
  IF ~~ THEN REPLY @6272 GOTO 32
  IF ~Global("Airship_Landed","GLOBAL",1)~ THEN REPLY @6273 GOTO 33
  IF ~~ THEN REPLY @6274 GOTO 35
  IF ~~ THEN REPLY @6275 GOTO 28
  IF ~~ THEN REPLY @6276 EXIT
END

IF ~~ THEN BEGIN 28
  SAY @6278
  IF ~~ THEN REPLY @6271 GOTO 29
  IF ~~ THEN REPLY @6272 GOTO 32
  IF ~Global("Airship_Landed","GLOBAL",1)~ THEN REPLY @6273 GOTO 33
  IF ~~ THEN REPLY @6274 GOTO 35
  IF ~~ THEN REPLY @6276 EXIT
END

IF ~~ THEN BEGIN 29
  SAY @11595
  IF ~~ THEN REPLY @11597 GOTO 30
  IF ~~ THEN REPLY @6272 GOTO 32
  IF ~Global("Airship_Landed","GLOBAL",1)~ THEN REPLY @6273 GOTO 33
  IF ~~ THEN REPLY @6274 GOTO 35
  IF ~~ THEN REPLY @6275 GOTO 28
  IF ~~ THEN REPLY @6276 EXIT
END

IF ~~ THEN BEGIN 30
  SAY @6236
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
  SAY @6238
  IF ~~ THEN REPLY @6272 GOTO 32
  IF ~Global("Airship_Landed","GLOBAL",1)~ THEN REPLY @11599 GOTO 33
  IF ~~ THEN REPLY @6274 GOTO 35
  IF ~~ THEN REPLY @6275 GOTO 28
  IF ~~ THEN REPLY @6276 EXIT
END

IF ~~ THEN BEGIN 32
  SAY @11600
  IF ~~ THEN REPLY @6271 GOTO 29
  IF ~Global("Airship_Landed","GLOBAL",1)~ THEN REPLY @11599 GOTO 33
  IF ~~ THEN REPLY @6274 GOTO 35
  IF ~~ THEN REPLY @6275 GOTO 28
  IF ~~ THEN REPLY @6276 EXIT
END

IF ~~ THEN BEGIN 33
  SAY @11601
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @11607
  IF ~~ THEN REPLY @6271 GOTO 29
  IF ~~ THEN REPLY @6272 GOTO 32
  IF ~~ THEN REPLY @6274 GOTO 35
  IF ~~ THEN REPLY @6275 GOTO 28
  IF ~~ THEN REPLY @6276 EXIT
END

IF ~~ THEN BEGIN 35
  SAY @11609
  IF ~~ THEN REPLY @6271 GOTO 29
  IF ~~ THEN REPLY @6272 GOTO 32
  IF ~Global("Airship_Landed","GLOBAL",1)~ THEN REPLY @6273 GOTO 33
  IF ~~ THEN REPLY @6275 GOTO 28
  IF ~~ THEN REPLY @6276 EXIT
END

IF WEIGHT #2
~Global("Know_Ulbrec","GLOBAL",1)
 Global("Told_Ulbrec_Goblins","GLOBAL",1)
 Global("Goblins_Attack_Palisade","GLOBAL",0)~ THEN BEGIN 36
  SAY @11610
  IF ~~ THEN REPLY @11611 GOTO 27
  IF ~~ THEN REPLY @11612 EXIT
END

IF WEIGHT #3
~Global("Goblins_Attack_Palisade","GLOBAL",1)
 Global("Shaengarne_Quest","GLOBAL",0)~ THEN BEGIN 37
  SAY @11613
  IF ~~ THEN DO ~AddXP2DA("IW2EX3A")
                 DisplayStringNoNameDlg(LastTalkedToBy,@6192)
                 SetGlobal("TP_Palisade_attack","GLOBAL",1)
                 AddJournalEntry(@6179,QUEST)~ GOTO 38
END

IF ~~ THEN BEGIN 38
  SAY @11614
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39
  SAY @11615
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
  SAY @11616
  IF ~~ THEN REPLY @11617 GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @11619
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
  SAY @11622
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
  SAY @11623
  IF ~~ THEN DO ~SetGlobal("Shaengarne_Quest","GLOBAL",1)
                 SetGlobal("IW2000_Revealed","GLOBAL",1)~ GOTO 44
END

IF ~~ THEN BEGIN 44
  SAY @11629
  IF ~~ THEN REPLY @11630 GOTO 47
  IF ~GlobalGT("Know_Oswald","GLOBAL",0)~ THEN REPLY @11631 GOTO 45
  IF ~GlobalGT("Know_Oswald","GLOBAL",0)~ THEN REPLY @11632 EXIT
  IF ~Global("Know_Oswald","GLOBAL",0)~ THEN REPLY @11633 EXIT
  IF ~Global("S_R_1","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36670 EXIT
  IF ~~ THEN REPLY @11645 EXIT
END

IF ~~ THEN BEGIN 45
  SAY @11647
  IF ~~ THEN REPLY @11648 GOTO 46
  IF ~Global("S_R_1","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36671 EXIT
  IF ~~ THEN REPLY @11660 EXIT
END

IF ~~ THEN BEGIN 46
  SAY @11661
  IF ~~ THEN REPLY @11664 GOTO 47
  IF ~~ THEN REPLY @11665 GOTO 48
  IF ~~ THEN REPLY @11666 GOTO 49
  IF ~~ THEN REPLY @11667 GOTO 50
  IF ~~ THEN REPLY @11668 GOTO 52
  IF ~~ THEN REPLY @6275 GOTO 53
  IF ~~ THEN REPLY @11681 EXIT
END

IF ~~ THEN BEGIN 47
  SAY @11686
  IF ~~ THEN REPLY @11665 GOTO 48
  IF ~~ THEN REPLY @11666 GOTO 49
  IF ~~ THEN REPLY @11667 GOTO 50
  IF ~~ THEN REPLY @11668 GOTO 52
  IF ~~ THEN REPLY @6275 GOTO 53
  IF ~~ THEN REPLY @11689 EXIT
END

IF ~~ THEN BEGIN 48
  SAY @11690
  IF ~~ THEN REPLY @11664 GOTO 47
  IF ~~ THEN REPLY @11666 GOTO 49
  IF ~~ THEN REPLY @11667 GOTO 50
  IF ~~ THEN REPLY @11668 GOTO 52
  IF ~~ THEN REPLY @6275 GOTO 53
  IF ~~ THEN REPLY @39908 EXIT
END

IF ~~ THEN BEGIN 49
  SAY @11701
  IF ~~ THEN REPLY @11664 GOTO 47
  IF ~~ THEN REPLY @11665 GOTO 48
  IF ~~ THEN REPLY @11667 GOTO 50
  IF ~~ THEN REPLY @11668 GOTO 52
  IF ~~ THEN REPLY @6275 GOTO 53
  IF ~~ THEN REPLY @39907 EXIT
END

IF ~~ THEN BEGIN 50
  SAY @11601
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
  SAY @11607
  IF ~~ THEN REPLY @11664 GOTO 47
  IF ~~ THEN REPLY @11665 GOTO 48
  IF ~~ THEN REPLY @11666 GOTO 49
  IF ~~ THEN REPLY @11668 GOTO 52
  IF ~~ THEN REPLY @6275 GOTO 53
  IF ~~ THEN REPLY @39906 EXIT
END

IF ~~ THEN BEGIN 52
  SAY @11705
  IF ~~ THEN REPLY @11664 GOTO 47
  IF ~~ THEN REPLY @11665 GOTO 48
  IF ~~ THEN REPLY @11666 GOTO 49
  IF ~~ THEN REPLY @11667 GOTO 50
  IF ~~ THEN REPLY @6275 GOTO 53
  IF ~~ THEN REPLY @39905 EXIT
END

IF ~~ THEN BEGIN 53
  SAY @11706
  IF ~~ THEN REPLY @11664 GOTO 47
  IF ~~ THEN REPLY @11665 GOTO 48
  IF ~~ THEN REPLY @11666 GOTO 49
  IF ~~ THEN REPLY @11667 GOTO 50
  IF ~~ THEN REPLY @11668 GOTO 52
  IF ~~ THEN REPLY @39904 EXIT
END

IF WEIGHT #4
~GlobalGT("Shaengarne_Quest","GLOBAL",0)
 Global("Shaengarne_Bridge_Cleared","GLOBAL",0)~ THEN BEGIN 54
  SAY @11722
  IF ~~ THEN REPLY @11727 GOTO 46
  IF ~~ THEN REPLY @11729 EXIT
END

IF WEIGHT #6
~Global("Shaengarne_Quest","GLOBAL",2)
 Global("Shaengarne_Bridge_Cleared","GLOBAL",1)
 GlobalLT("Shaengarne_Bridge_Destroyed","GLOBAL",2)~ THEN BEGIN 55
  SAY @11730
  IF ~~ THEN DO ~AddXP2DA("IW2EX4VH")
                 DisplayStringNoNameDlg(LastTalkedToBy,@6190)
                 EraseJournalEntry(@36210)
                 EraseJournalEntry(@36211)
                 EraseJournalEntry(@22466)
                 EraseJournalEntry(@35654)
                 EraseJournalEntry(@35655)
                 EraseJournalEntry(@35656)
                 EraseJournalEntry(@35892)
                 EraseJournalEntry(@35945)
                 EraseJournalEntry(@35948)
                 EraseJournalEntry(@35949)
                 EraseJournalEntry(@27883)
                 EraseJournalEntry(@28186)
                 EraseJournalEntry(@36490)
                 EraseJournalEntry(@36491)
                 EraseJournalEntry(@36494)
                 SetQuestDone(@6179)
                 AddJournalEntry(@6186,QUEST)~ GOTO 56
END

IF ~~ THEN BEGIN 56
  SAY @11733
  IF ~~ THEN REPLY @11735 GOTO 59
END

IF WEIGHT #5
~Global("Shaengarne_Quest","GLOBAL",2)
 Global("Shaengarne_Bridge_Cleared","GLOBAL",1)
 Global("Shaengarne_Bridge_Destroyed","GLOBAL",2)~ THEN BEGIN 57
  SAY @11736
  IF ~~ THEN DO ~AddXP2DA("IW2EX4H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@6188)
                 EraseJournalEntry(@36210)
                 EraseJournalEntry(@36211)
                 EraseJournalEntry(@22466)
                 EraseJournalEntry(@35654)
                 EraseJournalEntry(@35655)
                 EraseJournalEntry(@35656)
                 EraseJournalEntry(@35892)
                 EraseJournalEntry(@35945)
                 EraseJournalEntry(@35948)
                 EraseJournalEntry(@35949)
                 EraseJournalEntry(@27883)
                 EraseJournalEntry(@28186)
                 EraseJournalEntry(@36490)
                 EraseJournalEntry(@36491)
                 EraseJournalEntry(@36494)
                 SetQuestDone(@6179)
                 AddJournalEntry(@6181,QUEST)~ GOTO 58
END

IF ~~ THEN BEGIN 58
  SAY @11752
  IF ~~ THEN REPLY @11735 GOTO 59
END

IF ~~ THEN BEGIN 59
  SAY @11753
  IF ~~ THEN DO ~SetGlobal("Shaengarne_Quest","GLOBAL",3)
                 SetGlobal("Fortress_Quest","GLOBAL",1)
                 SetGlobal("IW3000_Revealed","GLOBAL",1)~ GOTO 60
END

IF ~~ THEN BEGIN 60
  SAY @11754
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @11755
  IF ~~ THEN REPLY @11763 GOTO 62
END

IF ~~ THEN BEGIN 62
  SAY @11771
  IF ~Global("S_R_2","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36668 EXIT
  IF ~~ THEN REPLY @11772 EXIT
END

IF WEIGHT #7
~Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)
 Global("Fortress_Quest","GLOBAL",1)~ THEN BEGIN 63
  SAY @11773
  IF ~GlobalGT("Know_Ennelia","GLOBAL",0)~ THEN REPLY @11774 GOTO 64
  IF ~GlobalLT("Know_Ennelia","GLOBAL",1)~ THEN REPLY @11775 EXIT
END

IF ~~ THEN BEGIN 64
  SAY @11776
  IF ~Global("Know_Ennelia","GLOBAL",2)~ THEN REPLY @11777 GOTO 65
  IF ~GlobalLT("Know_Ennelia","GLOBAL",2)~ THEN REPLY @11781 GOTO 66
END

IF ~~ THEN BEGIN 65
  SAY @11785
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66
  SAY @11786
  IF ~~ THEN REPLY @11791 EXIT
END

IF WEIGHT #8
~!Global("SPRITE_IS_DEAD31bugGut","GLOBAL",0)
 Global("Fortress_Quest","GLOBAL",1)~ THEN BEGIN 67
  SAY @11801
  IF ~~ THEN DO ~AddXP2DA("IW2EX6H")
                 DisplayStringNoNameDlg(LastTalkedToBy,@6191)
                 EraseJournalEntry(@6186)
                 EraseJournalEntry(@6181)
                 EraseJournalEntry(@16061)
                 EraseJournalEntry(@16063)
                 EraseJournalEntry(@16064)
                 EraseJournalEntry(@16065)
                 EraseJournalEntry(@16066)
                 EraseJournalEntry(@16067)
                 EraseJournalEntry(@16069)
                 EraseJournalEntry(@15928)
                 EraseJournalEntry(@635)
                 EraseJournalEntry(@15901)
                 SetGlobal("TP_FortressQuest","GLOBAL",1)
                 AddJournalEntry(@6187,QUEST)~ GOTO 68
END

IF ~~ THEN BEGIN 68
  SAY @11802
  IF ~~ THEN REPLY @11803 GOTO 69
  IF ~~ THEN REPLY @11804 GOTO 69
END

IF ~~ THEN BEGIN 69
  SAY @11805
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70
  SAY @11806
  IF ~~ THEN REPLY @24229 DO ~SetGlobal("Fortress_Quest","GLOBAL",2)~ GOTO 71
END

IF ~~ THEN BEGIN 71
  SAY @24230
  IF ~~ THEN REPLY @24231 EXIT
  IF ~Global("S_R_3","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @36669 EXIT
  IF ~~ THEN REPLY @24232 EXIT
END

IF WEIGHT #9
~Global("Fortress_Quest","GLOBAL",2)~ THEN BEGIN 72
  SAY @24233
  IF ~~ THEN REPLY @24234 EXIT
END
