/// @description Insert description here
// You can write your code in this editor
if global.key_start && global.inlevel && !instance_exists(obj_gameover)
{
	global.pause = !global.pause
	if global.pause
	{
		audio_pause_all()
		audio_stop_sound(snd_paused)
		audio_play_sound(snd_paused,1,false)
		instance_deactivate_all(true)
		instance_activate_object(obj_newmanager)
		instance_activate_object(obj_fadeblack)
	}
	else
	{
		audio_resume_all()
		audio_stop_sound(snd_paused)
		audio_play_sound(snd_paused,1,false)
		instance_activate_all()
	}
}

if (global.pause)
{
	if scroll < 64
		scroll++
	else
		scroll = 0
	if (os_type != os_android)
	{
		if global.key_upp
		{
			cursor--
			audio_play_sound(snd_move,1,false)
		}
		if global.key_downp
		{
			cursor++
			audio_play_sound(snd_move,1,false)
		}
		cursor=clamp(cursor,0,2)
		
		if global.key_jumpp
		{
			switch(cursor)
			{
				case 0:
					global.pause = false
					audio_play_sound(snd_confirm,1,false)
					audio_resume_all()
					instance_activate_all()
					break;
				case 1:
					if (global.lives <= 1 && !global.trial)
						audio_play_sound(snd_nicetry,1,false)
					else
					{
						if (!global.trial)
							global.lives--
						global.checkpoint=false
						audio_stop_all()
						audio_play_sound(snd_confirm,1,false)
						scr_restartlevel()
					}
					break;
				case 2:
					global.checkpoint=false
					audio_play_sound(snd_confirm,1,false)
					if global.trial
						loadroom(room_trialmenu, loadtype.menu)
					else if room=room_tutorial
						loadroom(room_househub, loadtype.newlevel)
					else
						loadroom(room_mainmenu, loadtype.menu)
					break;
			}
		}
	}
	else
	{
		virtual_key_add(160,224,64,64,vk_f5)
		virtual_key_add(288,224,64,64,vk_f6)
		virtual_key_add(416,224,64,64,vk_f7)
		resumekey=keyboard_check_pressed(vk_f5)
		retrykey=keyboard_check_pressed(vk_f6)
		quitkey=keyboard_check_pressed(vk_f7)
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
}