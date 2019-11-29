/// @description Pick an asteroid sprite and start moving in a random direction

sprite_index = choose(
	spr_asteroid_small,
	spr_asteroid_med,
	spr_asteroid_huge
);

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;

rotation_angle = choose(-1, -0.5, 0.5, 1);

