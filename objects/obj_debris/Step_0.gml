/// @description Debris controller

var fade = 0.01;

image_alpha -= fade;

if (image_alpha <= 0) {
	instance_destroy();
}
