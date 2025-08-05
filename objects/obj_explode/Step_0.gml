/// @description Insert description here
// You can write your code in this editor
if image_alpha>0 {
	image_alpha -= fadingspeed
	image_xscale += fadingspeed
	image_yscale += fadingspeed
}
else
	instance_destroy()