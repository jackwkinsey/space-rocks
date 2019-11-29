/// @description Handle player ship input
var turn_speed = 5;
var thrust = 0.05;

if (keyboard_check(vk_left)) {
	image_angle += turn_speed;
}

if (keyboard_check(vk_right)) {
	image_angle -= turn_speed;
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, thrust);
}

if (keyboard_check_pressed(vk_space)) {
	audio_play_sound(snd_zap, 1, false);
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.direction = image_angle;
}

move_wrap(true, true, sprite_width / 2);