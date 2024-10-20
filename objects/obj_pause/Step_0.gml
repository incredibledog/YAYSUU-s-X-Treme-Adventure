/// @description Insert description here
// You can write your code in this editor
pausekey=keyboard_check_pressed(ord("P")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_start)
upkey=keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0,gp_padu)
downkey=keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0,gp_padd)
confirmkey=keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_space) || gamepad_button_check_pressed(0,gp_face1)
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
	instance_activate_object(obj_fadeblack)
}
if !global.pause
{
	instance_activate_all()
}
if pausekey
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
if upkey and global.pause
{
	cursor-=1
	audio_play_sound(snd_move,1,false)
}
if downkey and global.pause
{
	cursor+=1
	audio_play_sound(snd_move,1,false)
}
if confirmkey and global.pause
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
	else if cursor=1 && (room=room_househub || room=room_househub_extra || global.lives=1)
	{
		audio_play_sound(snd_nicetry,1,false)
	}
	if cursor=2
	{
		global.hubstart=false
		global.checkpoint=false
		if (room=room_househub || room=room_househub_extra)
		{
			global.nextroom=room_chillfields_boss
		}
		else
		{
			global.nextroom=room_househub
		}
		instance_activate_object(obj_fadeblack)
		obj_fadeblack.fading=true
		audio_play_sound(snd_confirm,1,false)
	}
}