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
	ini_open("savedata.ini")
	if global.score>ini_read_real("records",string(room)+string("_score"),0) && !(room=room_chillfields_boss)
	{
		ini_write_real("records",string(room)+string("_score"),global.score)
	}
	if obj_hud.minutes<ini_read_real("records",string(room)+string("_minutes"),99) && !(room=room_chillfields_boss)
	{
		ini_write_real("records",string(room)+string("_minutes"),obj_hud.minutes)
		ini_write_real("records",string(room)+string("_seconds"),obj_hud.seconds)
	}
	else if (obj_hud.minutes=ini_read_real("records",string(room)+string("_minutes"),99) && !(room=room_chillfields_boss)) && obj_hud.seconds<ini_read_real("records",string(room)+string("_minutes"),59)
	{
		ini_write_real("records",string(room)+string("_minutes"),obj_hud.minutes)
		ini_write_real("records",string(room)+string("_seconds"),obj_hud.seconds)
	}
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
		virtual_key_add(224,416,96,32,vk_space)
		virtual_key_add(320,416,96,32,vk_shift)
	}
	if (global.key_jump && display>=4) || (keyboard_check_pressed(vk_f6) && display>=4) 
	{
		hide=true
		display=0
		audio_play_sound(snd_confirm,1,false)
		instance_destroy(obj_hud)
		global.checkpoint=false
		if global.trial=true
		{
			global.nextroom=room_trialmenu
		}
		else {
			switch (room)
			{
				case room_chillfields_1:
					global.nextroom=room_chillfields_2
				break;
				case room_chillfields_2d:
					global.nextroom=room_chillfields_boss
				break;
				case room_chillfields_boss:
					global.nextroom=room_mysticmanor_1
				break;
				default:
					global.nextroom=room_househub
				break;
			}
		}
		obj_fadeblack.fading=true
	}
	if global.key_dash && display>=4
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
			case room_chillfields_2d:
				global.nextroom=room_chillfields_2
			break;
			default:
				global.nextroom=room
			break;
		}
		obj_fadeblack.fading=true
	}
}