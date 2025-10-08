/// @description Insert description here
// You can write your code in this editor
if (obj_fadeblack.fading)
	return
if player=1
{
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
}
if player=2
{
	if global.p2_key_downp && !waitingforinput
	{
		chos++
		audio_play_sound(snd_move,1,false)
	}
	if global.p2_key_upp && !waitingforinput
	{
		chos--
		audio_play_sound(snd_move,1,false)
	}
}
chos=clamp(chos,1,16)
if !waitingforinput
{
	switch chos
	{
		case 9:
		if os_type=os_android && !gamepad_is_connected(0)
		{
			if global.key_right 
			{
				global.controlalpha+=0.01
			}
			else if global.key_left 
			{
				global.controlalpha-=0.01
			}
			else
			{
				global.controlalpha = round(global.controlalpha / 0.05) * 0.05
			}
			global.controlalpha=clamp(global.controlalpha,0.01,1)
		}
		else {
			if global.key_right 
			{
				global.sensitivity+=0.01
			}
			else if global.key_left 
			{
				global.sensitivity-=0.01
			}
			else
			{
				global.sensitivity = round(global.sensitivity / 0.05) * 0.05
			}
			global.sensitivity=clamp(global.sensitivity,0.01,1)
		}
		break;
		case 10:
		if player=1
		{
			if global.key_jumpp
			{
				global.vibration = !global.vibration
				audio_play_sound(snd_confirm,1,false)
			}
		}
		if player=2
		{
			if global.p2_key_jumpp
			{
				global.vibration = !global.vibration
				audio_play_sound(snd_confirm,1,false)
			}
		}
		break;
		case 11:
		if global.key_jumpp || global.p2_key_jumpp
		{
			if player=1
			{
				player=2
			}
			else if player=2
			{
				player=1
			}
			audio_play_sound(snd_confirm,1,false)
		}
		break;
		case 12:
		if player=1
		{
			if global.key_jumpp
			{
				global.p1_autorun = !global.p1_autorun
				audio_play_sound(snd_confirm,1,false)
			}
		}
		if player=2
		{
			if global.p2_key_jumpp
			{
				global.p2_autorun = !global.p2_autorun
				audio_play_sound(snd_confirm,1,false)
			}
		}
		break;
		case 13:
		if (global.key_jumpp && player=1) || (global.p2_key_jumpp && player=2)
		{
			global.menubuttontype = !global.menubuttontype
			audio_play_sound(snd_move,1,false)
		}
		break;
		case 14:
		if player=1
		{
			if global.key_rightp
				{
					if global.p1_controlslot+1=global.p2_controlslot
					{
						if global.p2_controlslot!=3
						{
							global.p1_controlslot+=2
						}
					}
					else
					{
						global.p1_controlslot++
					}
					audio_play_sound(snd_move,1,false)
				}
			if global.key_leftp
			{
				if global.p1_controlslot-1=global.p2_controlslot
				{
					if global.p2_controlslot!=0
					{
						global.p1_controlslot-=2
					}
				}
				else 
				{
					global.p1_controlslot--
				}
				audio_play_sound(snd_move,1,false)
			}
			global.p1_controlslot=clamp(global.p1_controlslot,0,3)
		}
		if player=2
		{
			if global.p2_key_rightp
				{
					if global.p2_controlslot+1=global.p1_controlslot
					{
						if global.p1_controlslot!=3
						{
							global.p2_controlslot+=2
						}
					}
					else
					{
						global.p2_controlslot++
					}
					audio_play_sound(snd_move,1,false)
				}
			if global.p2_key_leftp
			{
				if global.p2_controlslot-1=global.p1_controlslot
				{
					if global.p1_controlslot!=0
					{
						global.p2_controlslot-=2
					}
				}
				else
				{
					global.p2_controlslot--
				}
				audio_play_sound(snd_move,1,false)
			}
			global.p2_controlslot=clamp(global.p2_controlslot,0,3)
		}
		break;
		case 15:
		if player=1
		{
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
				global.p1_autorun=ini_read_real("controls","autorun",true)
				global.menubuttontype=ini_read_real("controls","menubuttontype",false)
				global.vibration=ini_read_real("controls","vibration",true)
				global.sensitivity=ini_read_real("settings","sensitivity",0.35)
				ini_close()
				audio_play_sound(snd_kablooey,1,false)
			}
		}
		if player=2
		{
			if global.p2_key_menuaccept
			{
				ini_open("savedata.ini")
				global.p2_controlslot=ini_read_real("controls","p2controlslot",1)
				global.p2_leftkey=ini_read_real("controls","p2leftkey",ord("J"))
				global.p2_rightkey=ini_read_real("controls","p2rightkey",ord("L"))
				global.p2_upkey=ini_read_real("controls","p2upkey",ord("I"))
				global.p2_downkey=ini_read_real("controls","p2downkey",ord("K"))
				global.p2_jumpkey=ini_read_real("controls","p2jumpkey",ord("O"))
				global.p2_dashkey=ini_read_real("controls","p2dashkey",ord("P"))
				global.p2_runkey=ini_read_real("controls","p2runkey",ord("U"))
				global.p2_startkey=ini_read_real("controls","p2startkey",ord("Y"))
				global.p2_autorun=ini_read_real("controls","p2autorun",true)
				global.menubuttontype=ini_read_real("controls","menubuttontype",false)
				global.vibration=ini_read_real("controls","vibration",true)
				global.sensitivity=ini_read_real("settings","sensitivity",0.35)
				ini_close()
				audio_play_sound(snd_kablooey,1,false)
			}
		}
		break;
		case 16:
		if (global.key_menuaccept && player=1) || (global.p2_key_menuaccept && player=2)
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
			ini_write_real("controls","autorun",global.p1_autorun)
			ini_write_real("controls","p2controlslot",global.p2_controlslot)
			ini_write_real("controls","p2leftkey",global.p2_leftkey)
			ini_write_real("controls","p2rightkey",global.p2_rightkey)
			ini_write_real("controls","p2upkey",global.p2_upkey)
			ini_write_real("controls","p2downkey",global.p2_downkey)
			ini_write_real("controls","p2jumpkey",global.p2_jumpkey)
			ini_write_real("controls","p2dashkey",global.p2_dashkey)
			ini_write_real("controls","p2runkey",global.p2_runkey)
			ini_write_real("controls","p2startkey",global.p2_startkey)
			ini_write_real("controls","p2autorun",global.p2_autorun)
			ini_write_real("controls","menubuttontype",global.menubuttontype)
			ini_write_real("controls","vibration",global.vibration)
			ini_write_real("settings","sensitivity",global.sensitivity)
			ini_close()
			instance_destroy()
			instance_activate_object(obj_options)
			audio_play_sound(snd_confirm,1,false)
		}
		break;
		default:
		if (global.key_menuaccept && player=1) || (global.p2_key_menuaccept && player=2)
		{
			waitingforinput=true
			audio_play_sound(snd_confirm,1,false)
		}
		return;
	}
}
if keyboard_check_pressed(vk_anykey) && !(keyboard_check_pressed(vk_f1) || keyboard_check_pressed(vk_f2) || keyboard_check_pressed(vk_f3) || keyboard_check_pressed(vk_f4) || keyboard_check_pressed(vk_f5) || keyboard_check_pressed(vk_f6) || keyboard_check_pressed(vk_f7) || keyboard_check_pressed(vk_f8) || keyboard_check_pressed(vk_f9) || keyboard_check_pressed(vk_f10) || keyboard_check_pressed(vk_f11) || keyboard_check_pressed(vk_f12)) && waitingforinput
{
	if player=1
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
	}
	if player=2
	{
		switch chos
		{
			case 1:
			global.p2_leftkey=keyboard_lastkey
			break;
			case 2:
			global.p2_rightkey=keyboard_lastkey
			break;
			case 3:
			global.p2_upkey=keyboard_lastkey
			break;
			case 4:
			global.p2_downkey=keyboard_lastkey
			break;
			case 5:
			global.p2_jumpkey=keyboard_lastkey
			break;
			case 6:
			global.p2_dashkey=keyboard_lastkey
			break;
			case 7:
			global.p2_runkey=keyboard_lastkey
			break;
			case 8:
			global.p2_startkey=keyboard_lastkey
			break;
		}
	}
	audio_play_sound(snd_confirm,1,false)
	waitingforinput=false
}
if ((global.key_menuquit && player=1) || (global.p2_key_menuquit && player=2)) && !waitingforinput
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
	global.p1_autorun=ini_read_real("controls","autorun",true)
	global.p2_controlslot=ini_read_real("controls","p2controlslot",1)
	global.p2_leftkey=ini_read_real("controls","p2leftkey",ord("J"))
	global.p2_rightkey=ini_read_real("controls","p2rightkey",ord("L"))
	global.p2_upkey=ini_read_real("controls","p2upkey",ord("I"))
	global.p2_downkey=ini_read_real("controls","p2downkey",ord("K"))
	global.p2_jumpkey=ini_read_real("controls","p2jumpkey",ord("O"))
	global.p2_dashkey=ini_read_real("controls","p2dashkey",ord("P"))
	global.p2_runkey=ini_read_real("controls","p2runkey",ord("U"))
	global.p2_startkey=ini_read_real("controls","p2startkey",ord("Y"))
	global.p2_autorun=ini_read_real("controls","p2autorun",true)
	global.menubuttontype=ini_read_real("controls","menubuttontype",false)
	ini_close()
	instance_destroy()
	instance_activate_object(obj_options)
	audio_play_sound(snd_confirm,1,false)
}