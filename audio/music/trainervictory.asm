Music_TrainerVictory:
	channel_count 4
	channel 1, Music_TrainerVictory_Ch1
	channel 2, Music_TrainerVictory_Ch2
	channel 3, Music_TrainerVictory_Ch3
	channel 4, Music_TrainerVictory_Ch4

Music_TrainerVictory_Ch1:
	tempo 213
	duty_cycle 3
	pitch_offset 1
	note_type 12, 11, 1
	transpose 1,0
	octave 4
	note A_, 2
	note A_, 1 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 1
	note A_, 1
	octave 5
	note C_, 1
	note D_, 1
	;note __, 0 | WARNING: Rounded down to 0
	note D_, 1
	octave 4
	note B_, 2
	note __, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note A_, 2
.mainloop:
	transpose 2,0
;Bar 2
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note __, 1
	note B_, 1
	note __, 2
	note G_, 1
	note __, 1
	note F_, 4
;Bar 3
	note B_, 1
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F_, 3
	note G_, 1
	note __, 1
	note F_, 4
;Bar 4
	note B_, 1
	note G_, 1
	note F_, 1
	note __, 1
	note D_, 2
	note __, 1
	note E_, 1
	note __, 2
	note D_, 1
	note __, 1
	octave 3
	note B_, 4
;Bar 5
	octave 4
	note C_, 1
	note D_, 1
	note E_, 1
	note __, 1
	note E_, 1
	note __, 2
	note D_, 1
	note __, 1
	note D_, 1
	octave 3
	note B_, 1
	note __, 1
	octave 4
	note C_, 4
;Bar 6
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note __, 1
	note B_, 1
	note __, 2
	octave 5
	note C_, 1
	note __, 1
	octave 4
	note B_, 4
;Bar 7
	octave 5
	note C_, 1
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note F_, 1
	note __, 1
	note E_, 3
	note D_, 1
	note __, 1
	octave 4
	note B_, 4
;Bar 8
	octave 5
	note C_, 1
	octave 4
	note B_, 1
	note G_, 1
	note __, 1
	note F_, 2
	note __, 1
	note G_, 1
	note __, 2
	note F_, 1
	note __, 1
	note B_, 4
;Bar 9
	note B_, 1
	note G_, 1
	note __, 1
	note F_, 1
	note __, 2
	note D_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	note C_, 4
	sound_loop 0, .mainloop
	
Music_TrainerVictory_Ch2:
	vibrato 18, 2, 4
	duty_cycle 2
	note_type 12, 13, 1
	octave 2
	note B_, 2
	note B_, 1 ; WARNING: Auto-Sync says: Rounded up!
	octave 3
	note D_, 1
	octave 2
	note B_, 1
	octave 3
	note E_, 1
	octave 2
	note B_, 1
	;note __, 0 | WARNING: Rounded down to 0
	note B_, 1
	octave 3
	note D_, 2
	note __, 1
	note D_, 1
	note D_, 1
	note D_, 1
	note E_, 2	
.mainloop:	
;Bar 2
	note C_, 1
	note C_, 1
	note __, 1
	note E_, 1
	note __, 1
	note D_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	note G_, 1
	note __, 2
	note B_, 1
	note __, 3
;Bar 3
	octave 3
	note D_, 1
	note D_, 1
	note __, 1
	octave 2
	note B_, 1
	note __, 1
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note G_, 1
	octave 3
	note C_, 1
	note __, 1
	octave 2
	note G_, 1
	note __, 3
;Bar 4
	note B_, 1
	note B_, 1
	note __, 1
	note G_, 1
	note __, 1
	note B_, 1
	note __, 1
	note G_, 1
	note __, 2
	note F_, 1
	note __, 1
	note G_, 4
;Bar 5
	note G_, 1
	note F_, 1
	note __, 1
	note G_, 1
	note __, 1
	note F_, 1
	note __, 1
	octave 3
	note D_, 1
	note __, 1
	octave 2
	note F_, 1
	note __, 2
	note G_, 4
	sound_loop 0, .mainloop	

Music_TrainerVictory_Ch3:
	note_type 12, 2, 0
	octave 1
	note G_, 2
	note G_, 1 ; WARNING: Auto-Sync says: Rounded up!
	note G_, 1
	note G_, 1
	note G_, 1
	note G_, 1
	;note __, 0 | WARNING: Rounded down to 0
	note G_, 1
	note G_, 2
	note __, 1
	note G_, 1
	note G_, 1
	note G_, 1
	note A_, 2
.mainloop:
;Bar 2
	note C_, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note B_, 1
	note __, 1
	note C_, 1
	note G_, 1
	note __, 1
	note C_, 1
	note A_, 1
	note __, 1
	note C_, 1
	octave 2
	note C_, 1
	octave 1
	note B_, 1
	note __, 1
;Bar 3
	note C_, 1
	note B_, 1
	note __, 1
	note C_, 1
	note G_, 1
	note __, 1
	note C_, 1
	note F_, 1
	note __, 1
	note C_, 1
	note G_, 1
	note __, 1
	note C_, 1
	note B_, 1
	note G_, 1
	note __, 1
;Bar 4
	note C_, 1
	octave 2
	note C_, 1
	note __, 1
	octave 1
	note C_, 1
	note B_, 1
	note __, 1
	note C_, 1
	note G_, 1
	note __, 1
	note C_, 1
	note A_, 1
	note __, 1
	note C_, 1
	octave 2
	note C_, 1
	octave 1
	note B_, 1
	note __, 1
;Bar 5
	note C_, 1
	note B_, 1
	note __, 1
	note C_, 1
	note G_, 1
	note __, 1
	note C_, 1
	note F_, 1
	note __, 1
	note C_, 1
	note E_, 1
	note __, 1
	note C_, 1
	note E_, 1
	note D_, 1
	note C_, 1
	sound_loop 0, .mainloop

Music_TrainerVictory_Ch4:
	toggle_noise 3
	drum_speed 12
	rest 16
.mainloop:
	drum_note 11, 3
	drum_note 8, 1
	
	drum_note 3, 3
	drum_note 8, 1
	
	drum_note 11, 2
	drum_note 8, 1
	drum_note 11, 1

	drum_note 3, 3
	drum_note 8, 1
	
	sound_loop 0, .mainloop
