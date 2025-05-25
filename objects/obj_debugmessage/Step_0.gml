/// @description Insert description here
// You can write your code in this editor
delay--
image_alpha = clamp(delay / 60, 0, 1)
if (delay == 0)
	instance_destroy()