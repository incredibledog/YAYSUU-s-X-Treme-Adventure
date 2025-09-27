/// @description Insert description here
// You can write your code in this editor
if (obj_fadeblack.fading)
	return

if global.key_downp && !waitingforinput
{
	chos++
	audio_play_sound(snd_move,1,false)
}
if global.key_upp && !waitingforinput
{
	chos--
	audio_play_sound(snd_move,1,false)
}
chos=clamp(chos,1,11)
if !waitingforinput
{
	switch chos
	{
		case 9:
		if global.key_rightp
		{
			global.p1_controlslot++
			audio_play_sound(snd_move,1,false)
		}
		if global.key_leftp
		{
			global.p1_controlslot--
			audio_play_sound(snd_move,1,false)
		}
		global.p1_controlslot=clamp(global.p1_controlslot,0,3)
		break;
		case 10:
		if global.key_menuaccept
		{
			ini_open("savedata.ini")
			global.p1_controlslot=ini_read_real("controls","p1controlslot",0)
			global.p1_leftkey=ini_read_real("controls","p1leftkey",vk_left)
			global.p1_rightkey=ini_read_real("controls","p1rightkey",vk_right)
			global.p1_upkey=ini_read_real("controls","p1upkey",vk_up)
			global.p1_downkey=ini_read_real("controls","p1downkey",vk_down)
			global.p1_jumpkey=ini_read_real("controls","p1jumpkey",ord("Z"))
			global.p1_dashkey=ini_read_real("controls","p1dashkey",ord("X"))
			global.p1_runkey=ini_read_real("controls","p1runkey",ord("C"))
			global.p1_startkey=ini_read_real("controls","p1startkey",vk_enter)
			ini_close()
			audio_play_sound(snd_kablooey,1,false)
		}
		break;
		case 11:
		if global.key_menuaccept
		{
			ini_open("savedata.ini")
			ini_write_real("controls","p1controlslot",global.p1_controlslot)
			ini_write_real("controls","p1leftkey",global.p1_leftkey)
			ini_write_real("controls","p1rightkey",global.p1_rightkey)
			ini_write_real("controls","p1upkey",global.p1_upkey)
			ini_write_real("controls","p1downkey",global.p1_downkey)
			ini_write_real("controls","p1jumpkey",global.p1_jumpkey)
			ini_write_real("controls","p1dashkey",global.p1_dashkey)
			ini_write_real("controls","p1runkey",global.p1_runkey)
			ini_write_real("controls","p1startkey",global.p1_startkey)
			ini_close()
			instance_destroy()
			instance_activate_object(obj_options)
			audio_play_sound(snd_confirm,1,false)
		}
		break;
		default:
		if global.key_menuaccept
		{
			waitingforinput=true
			audio_play_sound(snd_confirm,1,false)
		}
		return;
	}
}
if keyboard_check_pressed(vk_anykey) && waitingforinput
{
	switch chos
	{
		case 1:
		global.p1_leftkey=keyboard_lastkey
		break;
		case 2:
		global.p1_rightkey=keyboard_lastkey
		break;
		case 3:
		global.p1_upkey=keyboard_lastkey
		break;
		case 4:
		global.p1_downkey=keyboard_lastkey
		break;
		case 5:
		global.p1_jumpkey=keyboard_lastkey
		break;
		case 6:
		global.p1_dashkey=keyboard_lastkey
		break;
		case 7:
		global.p1_runkey=keyboard_lastkey
		break;
		case 8:
		global.p1_startkey=keyboard_lastkey
		break;
	}
	audio_play_sound(snd_confirm,1,false)
	waitingforinput=false
}
if global.key_menuquit && !waitingforinput
{
	ini_open("savedata.ini")
	global.p1_controlslot=ini_read_real("controls","p1controlslot",0)
	global.p1_leftkey=ini_read_real("controls","p1leftkey",vk_left)
	global.p1_rightkey=ini_read_real("controls","p1rightkey",vk_right)
	global.p1_upkey=ini_read_real("controls","p1upkey",vk_up)
	global.p1_downkey=ini_read_real("controls","p1downkey",vk_down)
	global.p1_jumpkey=ini_read_real("controls","p1jumpkey",ord("Z"))
	global.p1_dashkey=ini_read_real("controls","p1dashkey",ord("X"))
	global.p1_runkey=ini_read_real("controls","p1runkey",ord("C"))
	global.p1_startkey=ini_read_real("controls","p1startkey",vk_enter)
	ini_close()
	instance_destroy()
	instance_activate_object(obj_options)
	audio_play_sound(snd_confirm,1,false)
}