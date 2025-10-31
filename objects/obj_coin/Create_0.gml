/// @description Insert description here
// You can write your code in this editor
if room == room_glowstickcity
	sprite_index=spr_uncannycoin
else if (global.char == "C")
	sprite_index=spr_balloon
else
	sprite_index=spr_yaysuucoin
	
if (room != room_chillfields_1 && room != room_tutorial)
	instance_destroy(this, false)