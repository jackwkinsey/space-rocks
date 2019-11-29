/// @description Collision with Asteroid
audio_play_sound(snd_hurt, 1, false);
instance_destroy();

with(other) {
	instance_destroy();
	
	if (sprite_index == spr_asteroid_huge) {
		score += 25;
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_med;
		}
		
		repeat(20) {
			var debris = instance_create_layer(x, y, "Instances", obj_debris);
			var scale = irandom_range(1, 3);
			debris.image_xscale = scale;
			debris.image_yscale = scale;
		}
	} else if (sprite_index == spr_asteroid_med) {
		score += 50;
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small ;
		}
		
		repeat(10) {
			var debris = instance_create_layer(x, y, "Instances", obj_debris);
			var scale = irandom_range(1, 2);
			debris.image_xscale = scale;
			debris.image_yscale = scale;
		}
	} else {
		score += 100;
		repeat(5) {
			instance_create_layer(x, y, "Instances", obj_debris);
		}
	}
}
