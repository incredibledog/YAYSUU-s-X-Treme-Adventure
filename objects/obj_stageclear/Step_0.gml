/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_goalflag)
{
	if obj_goalflag.winning=true
	{
		hide=false
	}
}
if hide=false && results=false && bangtime=false
{
	results=true
	global.score+=global.scoreadd+obj_hud.timebonus+(global.coins*10)
	begintimer=room_speed*2
}
if begintimer>0
{
	begintimer-=1
}
if begintimer=0 && results=true && bangtime=false
{
	if room=room_chillfields_boss
	{
		display=4
	}
	else {
		display=1
	}
	bangtime=true
	audio_play_sound(snd_bang,1,false)
	bangtimer=room_speed*0.25
}
if bangtimer>0
{
	bangtimer-=1
}
if bangtimer=0 && display>0 && display<4
{
	display+=1
	audio_play_sound(snd_bang,1,false)
	bangtimer=room_speed*0.25
}
if hide=false
{
	nextkey=keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_alt) || gamepad_button_check_pressed(0,gp_face1)
	retrykey=keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0,gp_face2)
	image_xscale=clamp(image_xscale,1,2)
	image_yscale=clamp(image_yscale,1,2)
	image_alpha=clamp(image_alpha,0,1)
	if image_xscale>1
	{
		image_xscale-=0.01
	}
	if image_yscale>1
	{
		image_yscale-=0.01
	}
	if image_alpha<1
	{
		image_alpha+=0.01
	}
	if display>=4
	{
		virtual_key_add(224,416,96,32,vk_enter)
		virtual_key_add(320,416,96,32,vk_shift)
	}
	if (nextkey && display>=4) || (keyboard_check_pressed(vk_f6) && display>=4) 
	{
		hide=true
		display=0
		audio_play_sound(snd_confirm,1,false)
		instance_destroy(obj_hud)
		global.checkpoint=false
		switch (room)
		{
			case room_chillfields_1:
				global.nextroom=room_chillfields_2
			break;
			case room_chillfields_2b:
				global.nextroom=room_chillfields_boss
			break;
			default:
				global.nextroom=room_titlescreen
			break;
		}
		obj_fadeblack.fading=true
	}
	if retrykey && display>=4
	{
		hide=true
		display=0
		audio_play_sound(snd_confirm,1,false)
		global.checkpoint=false
		if global.lives>1
		{
			global.lives-=1
		}
		instance_destroy(obj_hud)
		switch (room)
		{
			case room_chillfields_2b:
				global.nextroom=room_chillfields_2
			break;
			default:
				global.nextroom=room
			break;
		}
		obj_fadeblack.fading=true
	}
}