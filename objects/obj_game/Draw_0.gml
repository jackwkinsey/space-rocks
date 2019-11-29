/// @description Text for rooms

switch (room) {
	case rm_game:
		draw_text(24, 24, "SCORE: " + string(score));
		draw_text(24, 48, "LIVES: " + string(lives));
		
		if (!global.player_alive) {
			draw_set_halign(fa_center);
			draw_text(room_width / 2, 400, "PRESS ENTER TO RESPAWN");
			draw_set_halign(fa_left);
		}
		break;
		
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width / 2, 100,
			"SPACE ROCKS",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 400,
			@"Score 1,000 points to win!

UP: add forward thrust
LEFT/RIGHT: change direction
SPACE: shoot

>> PRESS ENTER TO START <<
"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width / 2, 400,
			"YOU WON!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 500,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_game_over:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width / 2, 400,
			"GAME OVER",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 500,
			"FINAL SCORE: " + string(score)
		);
		draw_text(
			room_width / 2, 650,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
}
