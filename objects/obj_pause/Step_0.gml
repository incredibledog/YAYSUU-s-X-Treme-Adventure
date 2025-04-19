/// @description Insert description here
// You can write your code in this editor
resumekey=keyboard_check_pressed(vk_f5)
retrykey=keyboard_check_pressed(vk_f6)
quitkey=keyboard_check_pressed(vk_f7)
cursor=clamp(cursor,0,2)
if scrollx<64
{
	scrollx+=1
}
else {
	scrollx=0
}
if scrolly<64
{
	scrolly+=1
}
else {
	scrolly=0
}
if global.pause
{
	instance_deactivate_all(true)
	instance_activate_object(obj_gamecontroller)
	instance_activate_object(obj_fadeblack)
}
if !global.pause
{
	instance_activate_all()
}
if global.key_start
{
	global.pause=!global.pause
	if global.pause
	{
		audio_pause_all()
		audio_stop_sound(snd_paused)
		audio_play_sound(snd_paused,1,false)
	}
	if !global.pause
	{
		audio_resume_all()
		audio_stop_sound(snd_paused)
		audio_play_sound(snd_paused,1,false)
	}
}
if !(os_type=os_android)
{
	if global.key_upp and global.pause
	{
		cursor-=1
		audio_play_sound(snd_move,1,false)
	}
	if global.key_downp and global.pause
	{
		cursor+=1
		audio_play_sound(snd_move,1,false)
	}
	if global.key_jump and global.pause
	{
		if cursor=0
		{
			global.pause=!global.pause
			audio_play_sound(snd_confirm,1,false)
			audio_resume_all()
		}
		if cursor=1 && !(room=room_househub || room=room_househub_extra) && global.lives!=1
		{
			global.hubstart=false
			global.checkpoint=false
			global.lives-=1
			global.nextroom=room
			obj_fadeblack.fading=true
			audio_stop_all()
			audio_play_sound(snd_confirm,1,false)
		}
		else if cursor=1 && (room=room_househub || room=room_househub_extra || global.lives<=1)
		{
			audio_play_sound(snd_nicetry,1,false)
		}
		if cursor=2
		{
			global.hubstart=false
			global.checkpoint=false
			if (room=room_househub || room=room_househub_extra)
			{
				global.nextroom=room_glowstickcity
			}
			else if global.trial=true
			{
				global.nextroom=room_trialmenu
			}
			else {
				global.nextroom=room_househub
			}
			instance_activate_object(obj_fadeblack)
			obj_fadeblack.fading=true
			audio_play_sound(snd_confirm,1,false)
		}
	}
}
if os_type=os_android
{
	virtual_key_add(160,224,64,64,vk_f5)
	virtual_key_add(288,224,64,64,vk_f6)
	virtual_key_add(416,224,64,64,vk_f7)
	if resumekey
	{
		global.pause=!global.pause
		audio_play_sound(snd_confirm,1,false)
		audio_resume_all()
	}
	if retrykey && !(room=room_househub || room=room_househub_extra) && global.lives!=1
	{
		global.hubstart=false
		global.checkpoint=false
		global.lives-=1
		global.nextroom=room
		obj_fadeblack.fading=true
		audio_stop_all()
		audio_play_sound(snd_confirm,1,false)
	}
	if retrykey && (room=room_househub || room=room_househub_extra || global.lives=1)
	{
		audio_play_sound(snd_nicetry,1,false)
	}
	if quitkey
	{
		global.hubstart=false
		global.checkpoint=false
		if (room=room_househub || room=room_househub_extra)
		{
			global.nextroom=room_glowstickcity
		}
		else if global.trial=true
		{
			global.nextroom=room_trialmenu
		}
		else {
			global.nextroom=room_househub
		}
		instance_activate_object(obj_fadeblack)
		obj_fadeblack.fading=true
		audio_play_sound(snd_confirm,1,false)
	}
}