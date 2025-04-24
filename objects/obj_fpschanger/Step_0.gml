/// @description Insert description here
// You can write your code in this editor
if (touchingplayer(x, y) && obj_player.grounded)
{
	if (global.key_downp && gamefps != 1)
	{
		gamefps--
		audio_play_sound(snd_typewriterclick, 1, false)
	}
	else if (global.key_upp && gamefps != 120)
	{
		gamefps++
		audio_play_sound(snd_typewriterclick, 1, false)
	}
}

if (keyboard_check_pressed(ord("O")))
{
	dofps = !dofps
	if (!dofps)
		game_set_speed(60, gamespeed_fps)
}

if (dofps)
	game_set_speed(gamefps, gamespeed_fps)