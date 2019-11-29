/// @description Collision with Asteroid
audio_play_sound(snd_die, 1, false);
lives--;
global.player_alive = false;
instance_destroy(obj_ship);

repeat(100) {
	var debris = instance_create_layer(x, y, "Instances", obj_debris);
	debris.image_blend = make_color_rgb(random(255), random(255), random(255));
	var scale = irandom_range(1, 3);
	debris.image_xscale = scale;
	debris.image_yscale = scale;
}