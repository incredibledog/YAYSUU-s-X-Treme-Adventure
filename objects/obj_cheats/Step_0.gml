/// @description Insert description here
// You can write your code in this editor
// I'M SALVAGING THE OLD SOUND TEST!! WE'RE BACK!! AND BETTER THAN EVER!!!
keyboard_string=string_letters(string_lower(keyboard_string))
if string_length(keyboard_string)>15
{
	keyboard_string=string_copy(keyboard_string,1,15)
}
if keyboard_check_pressed(vk_escape)
{
	instance_destroy()
}
if keyboard_string="gaster"
{
	game_restart()
}
if keyboard_check_pressed(vk_enter)
{
	switch keyboard_string
	{
		case "yeahletsgo":
		audio_play_sound(snd_confirm,1,false)
		rewardstring="Scuffed voicelines enabled!"
		global.voicelines=true
		keyboard_string=""
		break;
		case "":
		audio_play_sound(snd_nicetry,1,false)
		rewardstring="Please enter in a cheat."
		keyboard_string=""
		break;
		default:
		audio_play_sound(snd_nicetry,1,false)
		rewardstring=choose("WRONG!","NOPE!","I'm afraid not.","Nuh uh.","Don't feel like it.","Try again!","loud incorrect buzzer","You stupid!")
		keyboard_string=""
		break;
	}
}