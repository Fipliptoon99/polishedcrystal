LightningIslandRoof_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, LIGHTNING_ISLAND, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  5, SPRITE_SPARK, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LightningIslandRoofSparkScript, EVENT_SHAMOUTI_COAST_SPARK

	object_const_def
	const LIGHTNINGISLANDROOF_SPARK

LightningIslandRoofSparkScript:
	faceplayer
	opentext
	writetext .GreetingText
	yesorno
	iffalse .Refused
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer SPARK_T, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SPARK
	showtext .AfterText
	playsound SFX_WARP_TO
	applyonemovement LIGHTNINGISLANDROOF_SPARK, teleport_from
	disappear LIGHTNINGISLANDROOF_SPARK
	clearevent EVENT_CELADON_UNIVERSITY_SPARK
	end

.Refused:
	jumpopenedtext .RefusedText

.GreetingText:
	text "TODO"
	done

.SeenText:
	text "TODO"
	done

.BeatenText:
	text "Spark: Impressive!"
	line "Your team is ob-"
	cont "viously synced!"
	done

.AfterText:
	text "Spark: It's been a"
	line "while since I have"
	cont "fought someone who"
	cont "is this strong!"
	
	para "I'd invite you to"
	line "Team Instinct, but"
	cont "you'd be better off"
	cont "in Valor, anyway."
	done

.RefusedText:
	text "Spark: Oh, I see!"
	line "Don't worry, take"
	cont "your time to pre-"
	cont "pare for battle!"
	done
