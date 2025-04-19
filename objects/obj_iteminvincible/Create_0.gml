/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if !instance_exists(obj_invincibility)
{
	instance_create_depth(obj_player.x,obj_player.y,obj_player.depth-1,obj_invincibility)
}