BEGIN ~61NHEERO~

IF ~~ THEN BEGIN 0
  SAY @35088
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      GlobalGT("61VolcanoStatus","GLOBAL",0)~ THEN REPLY @35089 GOTO 52
  IF ~Global("61PlayerSawSSethStatue","GLOBAL",1)
      !Global("61BrazierTally","GLOBAL",31)~ THEN REPLY @35090 DO ~SetGlobal("61NheeroSaidAgates","GLOBAL",1)
                                                                   AddJournalEntry(@35065,QUEST)~ GOTO 28
  IF ~Global("61NheeroGateQuest","GLOBAL",1)~ THEN REPLY @35091 DO ~SetGlobal("61NheeroDisposition","GLOBAL",1)~ GOTO 3
  IF ~Global("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35092 GOTO 14
  IF ~Global("61NheeroMissionQuest","GLOBAL",1)~ THEN REPLY @35093 GOTO 18
  IF ~Global("61PlayerKnowsNheeroIsSage","GLOBAL",0)~ THEN REPLY @35094 DO ~SetGlobal("61PlayerKnowsNheeroIsSage","GLOBAL",1)
                                                                            AddJournalEntry(@35049,QUEST)~ GOTO 11
  IF ~Global("61PlayerKnowsNheeroIsSage","GLOBAL",1)~ THEN REPLY @35095 GOTO 11
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61NheeroSaidArrival","GLOBAL",0)~ THEN REPLY @35096 DO ~SetGlobal("61NheeroSaidArrival","GLOBAL",1)
                                                                      AddJournalEntry(@35050,QUEST)~ GOTO 12
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61NheeroSaidArrival","GLOBAL",1)~ THEN REPLY @24649 GOTO 12
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61NheeroSaidPrison","GLOBAL",0)~ THEN REPLY @35097 DO ~SetGlobal("61NheeroSaidPrison","GLOBAL",1)
                                                                     AddJournalEntry(@35064,QUEST)~ GOTO 25
  IF ~Global("61NheeroSaidAgates","GLOBAL",1)
      Global("SPRITE_IS_DEADGrishum","GLOBAL",1)
      HasItem("MISC16",Myself)
      !Global("61BrazierTally","GLOBAL",31)~ THEN REPLY @35098 DO ~GiveItem("MISC16",LastTalkedToBy)
                                                                   GiveItem("MISC16",LastTalkedToBy)
                                                                   GiveItem("MISC16",LastTalkedToBy)
                                                                   GiveItem("MISC16",LastTalkedToBy)
                                                                   GiveItem("MISC16",LastTalkedToBy)~ GOTO 30
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61PlayerKnowsNheeroIsSage","GLOBAL",1)
      Global("61NheeroSaidYuanti","GLOBAL",0)~ THEN REPLY @35099 DO ~SetGlobal("61NheeroSaidYuanti","GLOBAL",1)
                                                                     AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61FeyrWasKilled","GLOBAL",1)
      GlobalLT("61NheeroResearchStatus","GLOBAL",2)~ THEN REPLY @35100 DO ~AddJournalEntry(@35072,QUEST)~ GOTO 37
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61FeyrWasKilled","GLOBAL",1)
      GlobalGT("61NheeroResearchStatus","GLOBAL",1)~ THEN REPLY @35100 DO ~AddJournalEntry(@35069,QUEST)~ GOTO 35
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      OR(2)
        Global("61PlayerReadWarningSign","GLOBAL",1)
        Global("61PlayerMetThorasskus","GLOBAL",1)
      GlobalLT("61NheeroResearchStatus","GLOBAL",2)~ THEN REPLY @35103 DO ~AddJournalEntry(@35072,QUEST)~ GOTO 37
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      OR(2)
        Global("61PlayerReadWarningSign","GLOBAL",1)
        Global("61PlayerMetThorasskus","GLOBAL",1)
      OR(2)
        Global("61NheeroResearchStatus","GLOBAL",2)
        Global("61NheeroResearchStatus","GLOBAL",3)~ THEN REPLY @35103 DO ~AddJournalEntry(@35073,QUEST)~ GOTO 38
  IF ~OR(2)
        Global("61PlayerReadWarningSign","GLOBAL",1)
        Global("61PlayerMetThorasskus","GLOBAL",1)
      GlobalGT("61NheeroResearchStatus","GLOBAL",3)~ THEN REPLY @35103 DO ~SetGlobal("61PlayerReadWarningSign","GLOBAL",1)~ GOTO 41
  IF ~GlobalGT("61NheeroTransformStatus","GLOBAL",2)
      Global("61NheeroSaidTransformation","GLOBAL",0)~ THEN REPLY @35104 DO ~SetGlobal("61NheeroSaidTransformation","GLOBAL",1)~ GOTO 45
  IF ~Global("61NheeroGaveSabotagedBrew","GLOBAL",0)
      Global("61PlayerSawSsethEye","GLOBAL",1)
      Global("61PlayerEnteredPrayerRoom","GLOBAL",0)
      GlobalGT("61NheeroTransformStatus","GLOBAL",2)~ THEN REPLY @35105 DO ~SetGlobal("61NheeroGaveSabotagedBrew","GLOBAL",1)
                                                                            GiveItemCreate("z6potnsb",LastTalkedToBy,1,0,0)
                                                                            //SetCriticalPathObject(Myself,FALSE)
                                                                            ApplySpellRES("IWCPREM",Myself)~ /* FLAGS 0x200 */ GOTO 53
  IF ~Global("61NheeroSaidLegion","GLOBAL",0)~ THEN REPLY @35106 DO ~SetGlobal("61NheeroSaidLegion","GLOBAL",1)
                                                                     AddJournalEntry(@35067,QUEST)~ GOTO 31
  IF ~~ THEN REPLY @35107 GOTO 58
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35109 GOTO 29
END

IF WEIGHT #1
~Global("61NheeroGateQuest","GLOBAL",0)~ THEN BEGIN 1
  SAY @35110
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35111 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",1)
                                                                      SetGlobal("61NheeroDisposition","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 3 /*true*/
  IF ~GlobalGT("61NheeroGateQuest","GLOBAL",2)~ THEN REPLY @35111 DO ~SetGlobal("61NheeroDisposition","GLOBAL",1)~ GOTO 7
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35112 DO ~SetGlobal("61NheeroDisposition","GLOBAL",2)~ /* FLAGS 0x200 */ GOTO 5 /*true*/
  IF ~~ THEN REPLY @35113 GOTO 4
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35114 GOTO 29
END

IF WEIGHT #2
~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN BEGIN 2
  SAY @35115
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35116 GOTO 6
  IF ~Global("61NheeroDisposition","GLOBAL",2)~ THEN REPLY @35116 GOTO 5
  IF ~Global("61NheeroDisposition","GLOBAL",0)~ THEN REPLY @35111 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",1)
                                                                      SetGlobal("61NheeroDisposition","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 3 /*true*/
  IF ~Global("61NheeroDisposition","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35112 DO ~SetGlobal("61NheeroDisposition","GLOBAL",2)~ /* FLAGS 0x200 */ GOTO 5 /*true*/
  IF ~Global("61NheeroDisposition","GLOBAL",0)~ THEN REPLY @35113 GOTO 4
  IF ~Global("61NheeroDisposition","GLOBAL",2)~ THEN REPLY @35117 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",1)
                                                                      SetGlobal("61NheeroDisposition","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 3 /*true*/
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35114 GOTO 29
END

IF ~~ THEN BEGIN 3
  SAY @35118
  IF ~Global("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35120 GOTO 7
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35121 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",2)
                                                                      AddJournalEntry(@24633,QUEST)~ /* FLAGS 0x200 */ GOTO 29 /*true*/
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35122 DO ~AddJournalEntry(@25799,QUEST)~ GOTO 9
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35123 DO ~SetGlobal("61NheeroDisposition","GLOBAL",2)~ /* FLAGS 0x200 */ GOTO 5 /*true*/
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35124 GOTO 29
END

IF ~~ THEN BEGIN 4
  SAY @35125
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35126 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",1)
                                                                      SetGlobal("61NheeroDisposition","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 3 /*true*/
  IF ~GlobalGT("61NheeroGateQuest","GLOBAL",2)~ THEN REPLY @35126 DO ~SetGlobal("61NheeroDisposition","GLOBAL",1)~ GOTO 7
  IF ~~ THEN REPLY @35127 DO ~SetGlobal("61PlayerKnowsNheeroIsSage","GLOBAL",1)
                              AddJournalEntry(@35049,QUEST)~ GOTO 11
  IF ~OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35128 DO ~SetGlobal("61NheeroDisposition","GLOBAL",2)~ /* FLAGS 0x200 */ GOTO 5 /*true*/
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35114 GOTO 29
END

IF ~~ THEN BEGIN 5
  SAY @35129
  IF ~Global("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35130 DO ~SetGlobal("61NheeroDisposition","GLOBAL",1)~ GOTO 0
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35131 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",1)
                                                                      SetGlobal("61NheeroDisposition","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 3 /*true*/
  IF ~Global("61NheeroDisposition","GLOBAL",0)~ THEN REPLY @35113 GOTO 4
  IF ~~ THEN REPLY @35132 EXIT
END

IF ~~ THEN BEGIN 6
  SAY @35133
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35134 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 3 /*true*/
  IF ~GlobalGT("61NheeroGateQuest","GLOBAL",2)~ THEN REPLY @35135 DO ~SetGlobal("61NheeroDisposition","GLOBAL",1)~ GOTO 7
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35124 GOTO 29
END

IF WEIGHT #3
~Global("61NheeroGateQuest","GLOBAL",3)~ THEN BEGIN 7
  SAY @35136
  IF ~~ THEN REPLY @35116 DO ~SetGlobal("61NheeroDisposition","GLOBAL",1)
                              SetGlobal("61NheeroGateQuest","GLOBAL",4)~ GOTO 0
END

IF WEIGHT #9
~True()~ THEN BEGIN 8
  SAY @35139
  IF ~GlobalGT("61VolcanoStatus","GLOBAL",0)~ THEN REPLY @35137 GOTO 52
  IF ~~ THEN REPLY @35116 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35114 GOTO 29
END

IF ~~ THEN BEGIN 9
  SAY @35140
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35121 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",2)
                                                                      AddJournalEntry(@24633,QUEST)~ /* FLAGS 0x200 */ GOTO 29 /*true*/
  IF ~!Global("61PrisonAlarmRang","GLOBAL",-1)
      CheckStatGT(LastTalkedToBy,14,CHR)~ THEN REPLY @35141 DO ~AddJournalEntry(@35047,QUEST)~ GOTO 10
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 10
  SAY @35143
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)~ THEN REPLY @35121 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",2)
                                                                      AddJournalEntry(@24633,QUEST)~ /* FLAGS 0x200 */ GOTO 29 /*true*/
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 11
  SAY @35144
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35145 GOTO 0
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)
      Global("61NheeroDisposition","GLOBAL",0)~ THEN REPLY @35126 DO ~SetGlobal("61NheeroGateQuest","GLOBAL",1)
                                                                      SetGlobal("61NheeroDisposition","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 3 /*true*/
  IF ~GlobalLT("61NheeroGateQuest","GLOBAL",3)
      Global("61NheeroDisposition","GLOBAL",0)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)~ THEN REPLY @35128 DO ~SetGlobal("61NheeroDisposition","GLOBAL",2)~ /* FLAGS 0x200 */ GOTO 5 /*true*/
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 12
  SAY @35146
  IF ~Global("61NheeroFindQuest","GLOBAL",3)~ THEN REPLY @35147 DO ~SetGlobal("61NheeroFindQuest","GLOBAL",4)
                                                                    SetGlobal("61NheeroMissionQuest","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 18 /*true*/
  IF ~~ THEN REPLY @35148 DO ~SetGlobal("61PlayerKnowsNheeroIsSage","GLOBAL",1)
                              AddJournalEntry(@35051,QUEST)~ GOTO 13
  IF ~~ THEN REPLY @35149 DO ~AddJournalEntry(@35052,QUEST)~ GOTO 14
  IF ~!Global("61BrazierTally","GLOBAL",31)~ THEN REPLY @35150 GOTO 27
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 13
  SAY @35152
  IF ~~ THEN REPLY @35153 GOTO 15
  IF ~Global("61NheeroSaidArrival","GLOBAL",1)~ THEN REPLY @35154 DO ~AddJournalEntry(@35052,QUEST)~ GOTO 14
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 14
  SAY @35155
  IF ~GlobalLT("61NheeroFindQuest","GLOBAL",4)
      Global("61NheeroFindQuest","GLOBAL",3)~ THEN REPLY @35156 DO ~SetGlobal("61NheeroFindQuest","GLOBAL",4)
                                                                    SetGlobal("61NheeroMissionQuest","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 18 /*true*/
  IF ~Global("61NheeroMissionQuest","GLOBAL",1)~ THEN REPLY @35157 DO ~SetGlobal("61NheeroMissionQuest","GLOBAL",2)
                                                                       AddJournalEntry(@35056,QUEST)~ GOTO 19
  IF ~~ THEN REPLY @35158 GOTO 15
  IF ~Global("61NheeroFindQuest","GLOBAL",0)~ THEN REPLY @35159 DO ~SetGlobal("61NheeroFindQuest","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 16 /*true*/
  IF ~Global("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35161 GOTO 16
  IF ~Global("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35162 DO ~SetGlobal("61NheeroFindQuest","GLOBAL",2)
                                                                    AddJournalEntry(@35053,QUEST)~ /* FLAGS 0x200 */ GOTO 29 /*true*/
  IF ~~ THEN REPLY @35148 DO ~SetGlobal("61PlayerKnowsNheeroIsSage","GLOBAL",1)
                              AddJournalEntry(@35051,QUEST)~ GOTO 13
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 15
  SAY @35163
  IF ~GlobalLT("61NheeroTransformStatus","GLOBAL",3)~ THEN REPLY @35165 DO ~AddJournalEntry(@35052,QUEST)~ GOTO 14
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 16
  SAY @35166
  IF ~GlobalLT("61NheeroFindQuest","GLOBAL",3)~ THEN REPLY @35162 DO ~SetGlobal("61NheeroFindQuest","GLOBAL",2)
                                                                      AddJournalEntry(@35053,QUEST)~ /* FLAGS 0x200 */ GOTO 29 /*true*/
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35167 DO ~SetGlobal("61NheeroFindQuest","GLOBAL",2)~ /* FLAGS 0x200 */ GOTO 29 /*true*/
END

IF WEIGHT #8
~OR(2)
   Global("61NheeroFindQuest","GLOBAL",2)
   Global("61NheeroFindQuest","GLOBAL",3)~ THEN BEGIN 17
  SAY @35168
  IF ~Global("61NheeroFindQuest","GLOBAL",3)~ THEN REPLY @35169 DO ~SetGlobal("61NheeroFindQuest","GLOBAL",4)
                                                                    SetGlobal("61NheeroMissionQuest","GLOBAL",1)~ /* FLAGS 0x200 */ GOTO 18 /*true*/
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~~ THEN REPLY @35116 GOTO 0
  IF ~!Global("61NheeroFindQuest","GLOBAL",3)~ THEN REPLY @35170 GOTO 29
END

IF ~~ THEN BEGIN 18
  SAY @35171
  IF ~GlobalLT("61NheeroMissionQuest","GLOBAL",3)~ THEN REPLY @35172 DO ~SetGlobal("61NheeroMissionQuest","GLOBAL",2)
                                                                         AddJournalEntry(@35056,QUEST)~ GOTO 19
  IF ~~ THEN REPLY @35149 DO ~AddJournalEntry(@35052,QUEST)~ GOTO 14
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~~ THEN REPLY @35116 GOTO 0
END

IF ~~ THEN BEGIN 19
  SAY @35173
  IF ~~ THEN REPLY @35175 DO ~AddJournalEntry(@35068,QUEST)~ GOTO 32
END

IF WEIGHT #7
~OR(2)
  Global("61NheeroMissionQuest","GLOBAL",2)
  Global("61NheeroMissionQuest","GLOBAL",3)~ THEN BEGIN 20
  SAY @35176
  IF ~//OR(2)
        PartyHasItem("z6genmm")
        //PartyHasItem("61HFGnMM")
        ~ THEN REPLY @35177 DO ~SetGlobal("61NheeroMissionQuest","GLOBAL",4)~ GOTO 60
  IF ~!PartyHasItem("z6genmm")
      //!PartyHasItem("61HFGnMM")
      ~ THEN REPLY @35178 GOTO 33
  IF ~~ THEN REPLY @35116 GOTO 0
  IF ~!PartyHasItem("z6genmm")
      //!PartyHasItem("61HFGnMM")
      ~ THEN REPLY @35179 GOTO 29
END

IF ~~ THEN BEGIN 21
  SAY @35180
  IF ~~ THEN REPLY @35181 GOTO 29
  IF ~~ THEN REPLY @35182 GOTO 0
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
END

IF WEIGHT #6
~GlobalGT("61NheeroMissionQuest","GLOBAL",3)
 GlobalLT("61NheeroMissionQuest","GLOBAL",9)~ THEN BEGIN 22
  SAY @35183
  IF ~GlobalGT("61VolcanoStatus","GLOBAL",0)~ THEN REPLY @35137 GOTO 52
  IF ~Global("61NheeroMissionQuest","GLOBAL",5)~ THEN REPLY @35184 DO ~AddJournalEntry(@35060,QUEST)~ GOTO 23
  IF ~Global("61NheeroMissionQuest","GLOBAL",6)~ THEN REPLY @35185 DO ~AddJournalEntry(@35061,QUEST)~ GOTO 23
  IF ~Global("61NheeroMissionQuest","GLOBAL",7)~ THEN REPLY @35187 DO ~AddJournalEntry(@35062,QUEST)~ GOTO 23
  IF ~Global("61NheeroMissionQuest","GLOBAL",8)
      PartyHasItem("z6potnsb")
      Global("61Alchemist_Intimidated","GLOBAL",0)
      Global("61PlayerMadeBrew","GLOBAL",0)~ THEN REPLY @35188 DO ~SetGlobal("61NheeroMissionQuest","GLOBAL",9)
                                                                   TakePartyItemNum("z6potnsb",1)
                                                                   EraseJournalEntry(@34990)
                                                                   EraseJournalEntry(@35758)
                                                                   EraseJournalEntry(@35050)
                                                                   EraseJournalEntry(@35060)
                                                                   EraseJournalEntry(@34992)
                                                                   EraseJournalEntry(@35061)
                                                                   EraseJournalEntry(@41362)
                                                                   EraseJournalEntry(@35062)
                                                                   EraseJournalEntry(@35051)
                                                                   EraseJournalEntry(@35052)
                                                                   EraseJournalEntry(@35056)
                                                                   EraseJournalEntry(@35053)
                                                                   EraseJournalEntry(@35068)
                                                                   EraseJournalEntry(@35059)
                                                                   AddJournalEntry(@35063,QUEST_DONE)~ GOTO 24
  IF ~Global("61NheeroMissionQuest","GLOBAL",8)
      PartyHasItem("z6potnsb")
      !Global("61Alchemist_Intimidated","GLOBAL",0)
      Global("61PlayerMadeBrew","GLOBAL",0)~ THEN REPLY @35189 DO ~SetGlobal("61NheeroMissionQuest","GLOBAL",9)
                                                                   TakePartyItemNum("z6potnsb",1)
                                                                   EraseJournalEntry(@34990)
                                                                   EraseJournalEntry(@35758)
                                                                   EraseJournalEntry(@35050)
                                                                   EraseJournalEntry(@35060)
                                                                   EraseJournalEntry(@34992)
                                                                   EraseJournalEntry(@35061)
                                                                   EraseJournalEntry(@41362)
                                                                   EraseJournalEntry(@35062)
                                                                   EraseJournalEntry(@35051)
                                                                   EraseJournalEntry(@35052)
                                                                   EraseJournalEntry(@35056)
                                                                   EraseJournalEntry(@35053)
                                                                   EraseJournalEntry(@35068)
                                                                   EraseJournalEntry(@35059)
                                                                   AddJournalEntry(@35063,QUEST_DONE)~ GOTO 24
  IF ~Global("61NheeroMissionQuest","GLOBAL",8)
      PartyHasItem("z6potnsb")
      !Global("61PlayerMadeBrew","GLOBAL",0)~ THEN REPLY @41377 DO ~SetGlobal("61NheeroMissionQuest","GLOBAL",9)
                                                                    TakePartyItemNum("z6potnsb",1)
                                                                    EraseJournalEntry(@34990)
                                                                    EraseJournalEntry(@35758)
                                                                    EraseJournalEntry(@35050)
                                                                    EraseJournalEntry(@35060)
                                                                    EraseJournalEntry(@34992)
                                                                    EraseJournalEntry(@35061)
                                                                    EraseJournalEntry(@41362)
                                                                    EraseJournalEntry(@35062)
                                                                    EraseJournalEntry(@35051)
                                                                    EraseJournalEntry(@35052)
                                                                    EraseJournalEntry(@35056)
                                                                    EraseJournalEntry(@35053)
                                                                    EraseJournalEntry(@35068)
                                                                    EraseJournalEntry(@35059)
                                                                    AddJournalEntry(@35063,QUEST_DONE)~ GOTO 24
  IF ~~ THEN REPLY @35116 GOTO 0
  IF ~Global("61NheeroMissionQuest","GLOBAL",4)~ THEN REPLY @35190 GOTO 29
END

IF ~~ THEN BEGIN 23
  SAY @35191
  IF ~~ THEN REPLY @35116 GOTO 0
  IF ~~ THEN REPLY @35192 GOTO 29
END

IF ~~ THEN BEGIN 24
  SAY @35193
  IF ~~ THEN REPLY @41355 GOTO 0
  IF ~~ THEN REPLY @41356 GOTO 29
END

IF ~~ THEN BEGIN 25
  SAY @35195
  IF ~GlobalLT("61NheeroTransformStatus","GLOBAL",3)~ THEN REPLY @35196 GOTO 26
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",2)~ THEN REPLY @35151 GOTO 5
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 26
  SAY @35197
  IF ~~ THEN REPLY @35198 DO ~SetGlobal("61PlayerKnowsNheeroIsSage","GLOBAL",1)
                              AddJournalEntry(@35051,QUEST)~ GOTO 13
  IF ~Global("61NheeroDisposition","GLOBAL",2)~ THEN REPLY @35151 GOTO 5
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 27
  SAY @35199
  IF ~Global("61PlayerSawSSethStatue","GLOBAL",1)~ THEN REPLY @35090 DO ~SetGlobal("61NheeroSaidAgates","GLOBAL",1)
                                                                         AddJournalEntry(@35065,QUEST)~ GOTO 28
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",2)~ THEN REPLY @35151 GOTO 5
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 28
  SAY @35200
  IF ~Global("SPRITE_IS_DEADGrishum","GLOBAL",1)
      HasItem("MISC16",Myself)~ THEN REPLY @35098 DO ~GiveItem("MISC16",LastTalkedToBy)
                                                      GiveItem("MISC16",LastTalkedToBy)
                                                      GiveItem("MISC16",LastTalkedToBy)
                                                      GiveItem("MISC16",LastTalkedToBy)
                                                      GiveItem("MISC16",LastTalkedToBy)~ GOTO 30
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~Global("61NheeroDisposition","GLOBAL",2)~ THEN REPLY @35151 GOTO 5
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 29
  SAY @35201
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61NheeroFindQuest","GLOBAL",0)
      Global("61NheeroSaidArrival","GLOBAL",0)~ THEN REPLY @24650 DO ~SetGlobal("61NheeroSaidArrival","GLOBAL",1)
                                                                      AddJournalEntry(@35050,QUEST)~ GOTO 12
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61NheeroFindQuest","GLOBAL",0)
      Global("61NheeroSaidArrival","GLOBAL",1)~ THEN REPLY @24649 GOTO 12
  IF ~Global("61NheeroGateQuest","GLOBAL",4)
      Global("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35092 GOTO 14
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN EXIT
END

IF ~~ THEN BEGIN 30
  SAY @35203
  IF ~Global("61NheeroDisposition","GLOBAL",2)~ THEN REPLY @35151 GOTO 5
  IF ~Global("61NheeroDisposition","GLOBAL",1)~ THEN REPLY @35151 GOTO 0
  IF ~CheckStatGT(LastTalkedToBy,11,CON)
      CheckStatLT(LastTalkedToBy,14,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @35204 DO ~GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)~ GOTO 57
  IF ~CheckStatGT(LastTalkedToBy,13,CON)
      CheckStatLT(LastTalkedToBy,17,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @35204 DO ~GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC42",LastTalkedToBy,0,0,0)~ GOTO 57
  IF ~CheckStatGT(LastTalkedToBy,16,CON)
      OR(2)
        !Class(LastTalkedToBy,PALADIN_ALL)
        Kit(LastTalkedToBy,BLACKGUARD)
      !Class(LastTalkedToBy,MONK)~ THEN REPLY @35204 DO ~GiveItemCreate("MISC36",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC42",LastTalkedToBy,0,0,0)
                                                         GiveItemCreate("MISC45",LastTalkedToBy,0,0,0)~ GOTO 57
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35194 GOTO 29
END

IF ~~ THEN BEGIN 31
  SAY @35205
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 32
  SAY @35206
  IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
  SAY @35207
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
  SAY @35208
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        !PartyHasItem("MYRLOCH")
        !PartyHasItemIdentified("MYRLOCH")~ THEN REPLY @35209 GOTO 29
  IF ~//PartyHasItem("MYRLOCH")
      PartyHasItemIdentified("MYRLOCH")~ THEN REPLY @41378 GOTO 29
END

IF ~~ THEN BEGIN 35
  SAY @35210
  IF ~GlobalLT("61NheeroResearchStatus","GLOBAL",4)~ THEN REPLY @35211 DO ~AddJournalEntry(@35073,QUEST)~ GOTO 38
  IF ~GlobalGT("61NheeroResearchStatus","GLOBAL",3)~ THEN REPLY @35211 DO ~AddJournalEntry(@35070,QUEST)~ GOTO 36
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 36
  SAY @35212
  IF ~~ THEN REPLY @35213 GOTO 40
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 37
  SAY @35214
  IF ~Global("61PlayerSawLibrary","GLOBAL",1)
      GlobalLT("61NheeroTransformStatus","GLOBAL",3)~ THEN REPLY @35215 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",2)
                                                                            SetGlobal("61NheeroResearchStatus","GLOBAL",1)~ GOTO 43
  IF ~Global("61PlayerSawLibrary","GLOBAL",1)
      GlobalGT("61NheeroTransformStatus","GLOBAL",2)~ THEN REPLY @35216 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",1)
                                                                            SetGlobal("61NheeroResearchStatus","GLOBAL",1)~ GOTO 39
  IF ~~ THEN REPLY @35217 GOTO 0
  IF ~Global("61PlayerSawLibrary","GLOBAL",0)
      OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35218 GOTO 29
END

IF ~~ THEN BEGIN 38
  SAY @35219
  IF ~Global("61PlayerSawStudy","GLOBAL",1)
      GlobalLT("61NheeroTransformStatus","GLOBAL",3)~ THEN REPLY @35220 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",2)
                                                                            SetGlobal("61NheeroResearchStatus","GLOBAL",3)~ GOTO 43
  IF ~Global("61PlayerSawStudy","GLOBAL",1)
      GlobalGT("61NheeroTransformStatus","GLOBAL",2)~ THEN REPLY @35220 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",1)
                                                                            SetGlobal("61NheeroResearchStatus","GLOBAL",3)~ GOTO 39
  IF ~~ THEN REPLY @35217 GOTO 0
  IF ~Global("61PlayerSawStudy","GLOBAL",0)~ THEN REPLY @35218 GOTO 29
END

IF ~~ THEN BEGIN 39
  SAY @35221
  IF ~~ THEN REPLY @35222 GOTO 0
  IF ~~ THEN REPLY @35223 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",0)
                              IncrementGlobal("61NheeroResearchStatus","GLOBAL",-1)~ /* FLAGS 0x200 */ GOTO 0 /*true*/
  IF ~~ THEN REPLY @35224 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",0)
                              IncrementGlobal("61NheeroResearchStatus","GLOBAL",-1)~ GOTO 29
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35225 GOTO 29
END

IF ~~ THEN BEGIN 40
  SAY @35226
  IF ~~ THEN DO ~SetGlobal("61PlayerReadWarningSign","GLOBAL",1)~ GOTO 41
END

IF ~~ THEN BEGIN 41
  SAY @35360
  IF ~~ THEN REPLY @35383 DO ~AddJournalEntry(@35075,QUEST)~ GOTO 42
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 42
  SAY @35384
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 43
  SAY @35481
  IF ~~ THEN REPLY @35514 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",0)
                              IncrementGlobal("61NheeroResearchStatus","GLOBAL",-1)~ /* FLAGS 0x200 */ GOTO 0 /*true*/
  IF ~~ THEN REPLY @35517 DO ~SetGlobal("61NheeroResearchRequest","GLOBAL",0)
                              IncrementGlobal("61NheeroResearchStatus","GLOBAL",-1)~ GOTO 29
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35225 GOTO 29
END

IF WEIGHT #5
~Global("61NheeroTransformStatus","GLOBAL",2)~ THEN BEGIN 44
  SAY @36072
  IF ~GlobalGT("61VolcanoStatus","GLOBAL",0)~ THEN REPLY @35137 GOTO 52
  IF ~~ THEN REPLY @37580 EXIT
END

IF ~~ THEN BEGIN 45
  SAY @37611
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 46
  SAY @38139
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @38153
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 48
  SAY @38164
  IF ~GlobalGT("61NheeroTransformStatus","GLOBAL",2)~ THEN REPLY @38168 DO ~AddJournalEntry(@35081,QUEST)~ GOTO 49
  IF ~!GlobalGT("61NheeroTransformStatus","GLOBAL",2)~ THEN REPLY @38168 GOTO 54
  IF ~Global("61NheeroGateQuest","GLOBAL",4)~ THEN REPLY @35099 DO ~AddJournalEntry(@35076,QUEST)~ GOTO 46
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 49
  SAY @38528
  IF ~GlobalLT("61NheeroResearchStatus","GLOBAL",2)~ THEN REPLY @38531 DO ~AddJournalEntry(@35072,QUEST)~ GOTO 37
  IF ~GlobalGT("61NheeroResearchStatus","GLOBAL",1)~ THEN REPLY @38531 DO ~AddJournalEntry(@35082,QUEST)~ GOTO 50
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 50
  SAY @38534
  IF ~GlobalLT("61NheeroResearchStatus","GLOBAL",4)~ THEN REPLY @39532 DO ~AddJournalEntry(@35069,QUEST)~ GOTO 38
  IF ~GlobalGT("61NheeroResearchStatus","GLOBAL",3)~ THEN REPLY @39532 DO ~AddJournalEntry(@35083,QUEST)~ GOTO 51
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 51
  SAY @41087
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF ~~ THEN BEGIN 52
  SAY @41088
  IF ~~ THEN REPLY @41089 DO ~GiveItemCreate("z0dartpd",LastTalkedToBy,20,0,0)
                              SetGlobal("61NheeroResearchRequest","GLOBAL",1)
                              SetGlobal("61NheeroResearchStatus","GLOBAL",5)~ GOTO 29
END

IF ~~ THEN BEGIN 53
  SAY @41090
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @41091 GOTO 29
END

IF ~~ THEN BEGIN 54
  SAY @41092
  IF ~~ THEN REPLY @35151 GOTO 0
  IF ~~ THEN REPLY @35142 GOTO 29
END

IF WEIGHT #0
~See([ENEMY])~ THEN BEGIN 55
  SAY @41093
  IF ~GlobalGT("61VolcanoStatus","GLOBAL",0)~ THEN REPLY @35137 GOTO 52
  IF ~~ THEN REPLY @41094 EXIT
END

IF WEIGHT #4
~Global("61NheeroResearchRequest","GLOBAL",3)~ THEN BEGIN 56
  SAY @41095
  IF ~GlobalGT("61VolcanoStatus","GLOBAL",0)~ THEN REPLY @35137 GOTO 52
  IF ~~ THEN REPLY @37580 EXIT
END

IF ~~ THEN BEGIN 57
  SAY @41096
  IF ~~ THEN REPLY @41139 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @41306 GOTO 29
END

IF ~~ THEN BEGIN 58
  SAY @41307
  IF ~~ THEN REPLY @41308 DO ~AddJournalEntry(@35084,QUEST)~ GOTO 59
  IF ~~ THEN REPLY @41139 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @41306 GOTO 29
END

IF ~~ THEN BEGIN 59
  SAY @41309
  IF ~~ THEN REPLY @41139 GOTO 0
  IF ~OR(2)
        GlobalLT("61NheeroGateQuest","GLOBAL",4)
        GlobalGT("61NheeroFindQuest","GLOBAL",1)~ THEN REPLY @41306 GOTO 29
END

IF ~~ THEN BEGIN 60
  SAY @41357
  IF ~~ THEN REPLY @41360 GOTO 61
END

IF ~~ THEN BEGIN 61
  SAY @41359
  IF ~~ THEN DO ~AddJournalEntry(@35059,QUEST)~ GOTO 21
END
