/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player))
{
	if ((!obj_player.vulnerable) && (place_meeting(x,y,obj_player)))
	{
		instance_destroy()
		global.scoreadd+=100
		obj_camera.vshakeoffset=15
		instance_create_depth(x,y,depth,obj_explode)
	}
	if ((obj_player.x) >=x+(384*-image_xscale) && ((obj_player.x) < x) && image_xscale=1) || ((obj_player.x) <=x+(384*-image_xscale) && ((obj_player.x) > x) && image_xscale=-1)
	{
		spotted=true
	}
	else {
		spotted=false
	}
}
if spotted=true && shoottimer=0
{
	instance_create_depth(x-32,y-8,depth+1,obj_robot2_boolet,
	{
		dir:-image_xscale
	});
	audio_play_sound(snd_shoot,1,false)
	sprite_index=spr_robot2_shoot
	shoottimer=room_speed*1
}
if shoottimer>0
{
	shoottimer-=1
}