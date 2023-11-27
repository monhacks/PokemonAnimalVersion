	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsOfAlphResearchCenter_MapScripts:
	def_scene_scripts
	scene_script .DummyScene0 ; SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	scene_script .GetLettahDex ; SCENE_RUINSOFALPHRESEARCHCENTER_GET_LETTAH_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .ScientistCallback

.DummyScene0:
	end

.GetLettahDex:
	sdefer .GetLettahDexScript
	end

.ScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_LETTAH_DEX, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

.GetLettahDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	refreshscreen
	opentext
	trainerpic SCIENTIST
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetrainpic
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesPlayerMovement
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_LETTAH_DEX
	refreshscreen
	trainerpic SCIENTIST
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetrainpic
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterLeavesPlayerMovement
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCIENTIST
	readvar VAR_LETTAHCOUNT
	ifequal NUM_LETTAH, .PrinterAvailable
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetrainpic
	closetext
	end

.PrinterAvailable:
	trainerpic SCIENTIST
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	waitbutton
	closetrainpic
	closetext
	end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCIENTIST
	readvar VAR_LETTAHCOUNT
	ifequal NUM_LETTAH, .GotAllLettah
	checkflag ENGINE_LETTAH_DEX
	iftrue .GotLettahDex
	checkevent EVENT_MADE_LETTAH_APPEAR_IN_RUINS
	iftrue .LettahAppeared
	writetext RuinsOfAlphResearchCenterScientist1Text
	waitbutton
	closetrainpic
	closetext
	end

.LettahAppeared:
	writetext RuinsOfAlphResearchCenterScientist1Text_LettahAppeared
	waitbutton
	closetrainpic
	closetext
	end

.GotLettahDex:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotLettahDex
	waitbutton
	closetrainpic
	closetext
	end

.GotAllLettah:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotAllLettah
	waitbutton
	closetrainpic
	closetext
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_YOUNGSTERS
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	refreshscreen
	opentext
	trainerpic SCIENTIST
	readvar VAR_LETTAHCOUNT
	ifequal NUM_LETTAH, .GotAllLettah
	checkevent EVENT_MADE_LETTAH_APPEAR_IN_RUINS
	iftrue .LettahAppeared
	writetext RuinsOfAlphResearchCenterScientist2Text
	waitbutton
	closetrainpic
	closetext
	end

.LettahAppeared:
	writetext RuinsOfAlphResearchCenterScientist2Text_LettahAppeared
	waitbutton
	closetrainpic
	closetext
	end

.GotAllLettah:
	writetext RuinsOfAlphResearchCenterScientist2Text_GotAllLettah
	waitbutton
	closetrainpic
	closetext
	end

RuinsOfAlphResearchCenterComputer:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_LETTAHCOUNT
	ifequal NUM_LETTAH, .GotAllLettah
.SkipChecking:
	writetext RuinsOfAlphResearchCenterComputerText
	waitbutton
	closetext
	end

.GotAllLettah:
	writetext RuinsOfAlphResearchCenterComputerText_GotAllLettah
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPrinter:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_LETTAHCOUNT
	ifequal NUM_LETTAH, .PrinterAvailable
.SkipChecking:
	writetext RuinsOfAlphResearchCenterPrinterText_DoesntWork
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterLettahPrinterText
	waitbutton
	special LettahPrinter
	closetext
	end

RuinsOfAlphResearchCenterPhoto: ; unreferenced
	jumptext RuinsOfAlphResearchCenterProfSilktreePhotoText

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenterApproachesPlayerMovement:
	step DOWN
	step_end

RuinsOfAlphResearchCenterLeavesPlayerMovement:
	step UP
	step_end

RuinsOfAlphResearchCenterModifiedDexText:
	text "Done!"

	para "I modified your"
	line "ANIMALDEX."

	para "I added an"
	line "optional ANIMALDEX"

	para "to store LETTAH"
	line "data."

	para "It records them in"
	line "the sequence that"
	cont "they were caught."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "<PLAYER>'s ANMLDEX"
	line "was upgraded."
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "The LETTAH you"
	line "catch will all be"
	cont "recorded."

	para "Check to see how"
	line "many kinds exist."
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "You caught all the"
	line "LETTAH variations?"

	para "That's a great"
	line "achievement!"

	para "I've set up the"
	line "printer here for"
	cont "handling LETTAH."

	para "Feel free to use"
	line "it anytime."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "The RUINS are"
	line "about 1500 years"
	cont "old."

	para "But it's not known"
	line "why they were"
	cont "built--or by whom."
	done

RuinsOfAlphResearchCenterScientist1Text_GotLettahDex:
	text "I wonder how many"
	line "kinds of ANIMALs"
	cont "are in the RUINS?"
	done

RuinsOfAlphResearchCenterScientist1Text_LettahAppeared:
	text "ANIMALs appeared"
	line "in the RUINS?"

	para "That's incredible"
	line "news!"

	para "We'll need to"
	line "investigate this."
	done

RuinsOfAlphResearchCenterScientist1Text_GotAllLettah:
	text "Our investigation,"
	line "with your help, is"

	para "giving us insight"
	line "into the RUINS."

	para "The RUINS appear"
	line "to have been built"

	para "as a habitat for"
	line "ANIMALs."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "There are odd pat-"
	line "terns drawn on the"

	para "walls of the"
	line "RUINS."

	para "They must be the"
	line "keys for unravel-"
	cont "ing the mystery"
	cont "of the RUINS."
	done

RuinsOfAlphResearchCenterScientist2Text_LettahAppeared:
	text "The strange ANIMAL"
	line "you saw in the"
	cont "RUINS?"

	para "They appear to be"
	line "very much like the"

	para "drawings on the"
	line "walls there."

	para "Hmm..."

	para "That must mean"
	line "there are many"
	cont "kinds of them..."
	done

RuinsOfAlphResearchCenterUnusedText1: ; unreferenced
	text "We think something"
	line "caused the cryptic"

	para "patterns to appear"
	line "in the RUINS."

	para "We've focused our"
	line "studies on that."
	done

RuinsOfAlphResearchCenterUnusedText2: ; unreferenced
	text "According to my"
	line "research..."

	para "Those mysterious"
	line "patterns appeared"

	para "when the ANIMAL"
	line "CENTER was built."

	para "It must mean that"
	line "radio waves have"

	para "some sort of a"
	line "link..."
	done

RuinsOfAlphResearchCenterScientist2Text_GotAllLettah:
	text "Why did those"
	line "ancient patterns"

	para "appear on the wall"
	line "now?"

	para "The mystery"
	line "deepens..."
	done

RuinsOfAlphResearchCenterComputerText:
	text "RUINS OF ALPH"

	para "Exploration"
	line "Year 10"
	done

RuinsOfAlphResearchCenterComputerText_GotAllLettah:
	text "Mystery ANIMALs"
	line "Name: LETTAH"

	para "A total of {d:NUM_LETTAH}"
	line "kinds found."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "This doesn't seem"
	line "to work yet."
	done

RuinsOfAlphResearchCenterLettahPrinterText:
	text "LETTAH may be"
	line "printed out."
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "It's a photo of"
	line "the RESEARCH"

	para "CENTER'S founder,"
	line "PROF.SILKTREE."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "There are many"
	line "academic books."

	para "Ancient Ruins..."
	line "Mysteries of the"
	cont "Ancients..."
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  3,  4, BGEVENT_READ, RuinsOfAlphResearchCenterComputer
	bg_event  7,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
