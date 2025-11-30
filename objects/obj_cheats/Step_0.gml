/// @description Insert description here
// You can write your code in this editor
// I'M SALVAGING THE OLD SOUND TEST!! WE'RE BACK!! AND BETTER THAN EVER!!!
keyboard_string=string_letters(string_lower(keyboard_string))
if string_length(keyboard_string)>15
{
	keyboard_string=string_copy(keyboard_string,1,15)
}
if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(0,gp_face2) || (!keyboard_virtual_status() && global.mobile)
{
	audio_play_sound(snd_nahnvm,0,false,global.sndvol)
	instance_destroy()
}
if keyboard_string="gaster" || keyboard_string="schmorgarefsu"
	game_restart()
if keyboard_check_pressed(vk_enter)
{
	switch keyboard_string
	{
		case "opensalami":
		if global.mobile
		{
			audio_play_sound(snd_nicetry,1,false,global.sndvol)
			rewardstring="Have you tried not having a phone?"
			keyboard_string=""
		}
		else {
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			rewardstring="Indev mode enabled! Use the FUNCTION KEYS!!"
			global.indev = true
			keyboard_string=""
		}
		break;
		case "bobcatblues":
		audio_play_sound(snd_confirm,1,false,global.sndvol)
		rewardstring="What could possibly go wrong?"
		global.bobcat = true
		keyboard_string=""
		break;
		case "iamgod":
		audio_play_sound(snd_confirm,1,false,global.sndvol)
		rewardstring="Immortality achieved!"
		global.godmode = true
		keyboard_string=""
		break;
		case "":
		audio_play_sound(snd_nicetry,1,false,global.sndvol)
		rewardstring="Please enter in a cheat."
		keyboard_string=""
		break;
		default:
		audio_play_sound(snd_nicetry,1,false,global.sndvol)
		rewardstring=choose("WRONG!","NOPE!","I'm afraid not.","Nuh uh.","Don't feel like it.","Try again!","loud incorrect buzzer","You stupid!")
		keyboard_string=""
		break;
	}
}