/// @description Insert description here
// You can write your code in this editor
instance_create_depth(x,y,depth,obj_explode)
global.itempopupdepth--
if self.id=obj_fringlemonitor
	return;
with (instance_create_layer(320+(instance_number(obj_itemdefault)*32),416,"gui",obj_itemdefault))
{
	depth = global.itempopupdepth
	sprite_index = other.popupsprite
	if (sprite_index == spr_itemlife_y || sprite_index == spr_itemlife_t)
	{
		audio_pause_sound(global.currentsong)
		audio_play_sound(snd_extralife,1,false,global.sndvol)
	}
}