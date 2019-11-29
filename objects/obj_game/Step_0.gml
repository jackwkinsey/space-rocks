/// @description Handle room transitions

if (keyboard_check_pressed(vk_enter)) {
	switch (room) {
		case rm_start:
			room_goto(rm_game);
			break;
			
		case rm_win:
		case rm_game_over:
			game_restart();
			break;
			
		case rm_game:
			if (!global.player_alive) {
				room_goto(rm_game);
				global.player_alive = true;
			}
			break;
	}
}

if (room == rm_game) {
	if (score >= 1000) {
		audio_play_sound(snd_win, 1, false);
		room_goto(rm_win);
	}

	if (lives <= 0) {
		audio_stop_sound(msc_song);
		audio_play_sound(snd_lose, 1, false);
		room_goto(rm_game_over);
	}
}
