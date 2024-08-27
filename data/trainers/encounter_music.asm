; What music plays when a trainer notices you

TrainerEncounterMusic::
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 1, TrainerEncounterMusic
	db MUSIC_HIKER_ENCOUNTER       ; none
	db MUSIC_YOUNGSTER_ENCOUNTER   ; big_bird
	db MUSIC_LASS_ENCOUNTER        ; lara
	db MUSIC_YOUNGSTER_ENCOUNTER   ; tpain
	db MUSIC_OFFICER_ENCOUNTER     ; jason
	db MUSIC_OFFICER_ENCOUNTER     ; lincoln
	db MUSIC_LASS_ENCOUNTER        ; diana
	db MUSIC_OFFICER_ENCOUNTER     ; jose
	db MUSIC_BEAUTY_ENCOUNTER      ; peely
	db MUSIC_RIVAL_ENCOUNTER       ; rival1
	db MUSIC_HIKER_ENCOUNTER       ; pokemon_prof
	db MUSIC_HIKER_ENCOUNTER       ; will
	db MUSIC_HIKER_ENCOUNTER       ; cal
	db MUSIC_OFFICER_ENCOUNTER     ; bruno
	db MUSIC_HIKER_ENCOUNTER       ; karen
	db MUSIC_HIKER_ENCOUNTER       ; koga
	db MUSIC_OFFICER_ENCOUNTER     ; champion
	db MUSIC_YOUNGSTER_ENCOUNTER   ; kid_rock
	db MUSIC_LASS_ENCOUNTER        ; misty
	db MUSIC_OFFICER_ENCOUNTER     ; arnold
	db MUSIC_ROCKET_ENCOUNTER      ; scientist
	db MUSIC_OFFICER_ENCOUNTER     ; erika
	db MUSIC_YOUNGSTER_ENCOUNTER   ; youngster
	db MUSIC_YOUNGSTER_ENCOUNTER   ; schoolboy
	db MUSIC_YOUNGSTER_ENCOUNTER   ; bird_keeper
	db MUSIC_LASS_ENCOUNTER        ; lass
	db MUSIC_LASS_ENCOUNTER        ; janine
	db MUSIC_HIKER_ENCOUNTER       ; cooltrainerm
	db MUSIC_BEAUTY_ENCOUNTER      ; cooltrainerf
	db MUSIC_BEAUTY_ENCOUNTER      ; beauty
	db MUSIC_POKEMANIAC_ENCOUNTER  ; pokemaniac
	db MUSIC_ROCKET_ENCOUNTER      ; gruntm
	db MUSIC_HIKER_ENCOUNTER       ; gentleman
	db MUSIC_BEAUTY_ENCOUNTER      ; skier
	db MUSIC_BEAUTY_ENCOUNTER      ; teacher
	db MUSIC_BEAUTY_ENCOUNTER      ; sabrina
	db MUSIC_YOUNGSTER_ENCOUNTER   ; bug_catcher
	db MUSIC_HIKER_ENCOUNTER       ; fisher
	db MUSIC_HIKER_ENCOUNTER       ; swimmerm
	db MUSIC_BEAUTY_ENCOUNTER      ; swimmerf
	db MUSIC_HIKER_ENCOUNTER       ; sailor
	db MUSIC_POKEMANIAC_ENCOUNTER  ; super_nerd
	db MUSIC_RIVAL_ENCOUNTER       ; rival2
	db MUSIC_HIKER_ENCOUNTER       ; guitarist
	db MUSIC_HIKER_ENCOUNTER       ; hiker
	db MUSIC_HIKER_ENCOUNTER       ; biker
	db MUSIC_OFFICER_ENCOUNTER     ; blaine
	db MUSIC_POKEMANIAC_ENCOUNTER  ; burglar
	db MUSIC_HIKER_ENCOUNTER       ; firebreather
	db MUSIC_POKEMANIAC_ENCOUNTER  ; juggler
	db MUSIC_HIKER_ENCOUNTER       ; blackbelt_t
	db MUSIC_ROCKET_ENCOUNTER      ; executivem
	db MUSIC_YOUNGSTER_ENCOUNTER   ; psychic_t
	db MUSIC_LASS_ENCOUNTER        ; picnicker
	db MUSIC_YOUNGSTER_ENCOUNTER   ; camper
	db MUSIC_ROCKET_ENCOUNTER      ; executivef
	db MUSIC_SAGE_ENCOUNTER        ; sage
	db MUSIC_SAGE_ENCOUNTER        ; medium
	db MUSIC_HIKER_ENCOUNTER       ; boarder
	db MUSIC_HIKER_ENCOUNTER       ; pokefanm
	db MUSIC_KIMONO_ENCOUNTER      ; kimono_girl
	db MUSIC_LASS_ENCOUNTER        ; twins
	db MUSIC_BEAUTY_ENCOUNTER      ; pokefanf
	db MUSIC_HIKER_ENCOUNTER       ; red
	db MUSIC_RIVAL_ENCOUNTER       ; blue
	db MUSIC_HIKER_ENCOUNTER       ; officer
	db MUSIC_ROCKET_ENCOUNTER      ; gruntf
	db MUSIC_HIKER_ENCOUNTER       ; mysticalman
	db MUSIC_HIKER_ENCOUNTER       ; oldman 
	db MUSIC_KIMONO_ENCOUNTER      ; mom
	db MUSIC_HIKER_ENCOUNTER       ; elm
	db MUSIC_KIMONO_ENCOUNTER      ; nurselady
	db MUSIC_HIKER_ENCOUNTER       ; bill_t
	db MUSIC_HIKER_ENCOUNTER       ; kurt
	db MUSIC_HIKER_ENCOUNTER       ; guide
	db MUSIC_HIKER_ENCOUNTER       ; papa
	assert_table_length NUM_TRAINER_CLASSES + 1
