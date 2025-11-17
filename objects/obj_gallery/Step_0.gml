/// @description Insert description here
// You can write your code in this editor
x -= 10 * (global.key_right - global.key_left)
y -= 10 * (global.key_down - global.key_up)
if global.key_runp
{
	if image_index=image_number-1
	{
		image_index=0
	}
	else {
		image_index++
	}
}
if global.key_jump
{
	image_xscale+=0.01
	image_yscale+=0.01
}
else if global.key_dash
{
	image_xscale-=0.01
	image_yscale-=0.01
}
switch image_index
{
	case 0:
	description="There were many iterations of YAYSUU before YAYSUU's X-Treme Adventure. Too bad they're all gone!"
	break;
	case 1:
	description="Concepts for 2 new robot enemies."
	break;
	case 2:
	description="The very first screenshot of YAYSUU's X-Treme Adventure being made in Gamemaker. YAYSUU pong."
	break;
	case 3:
	description="The level design in this blue void is starting to take form at this point..."
	break;
	case 4:
	description="Figuring out how to use sprite fonts. Nothing like a big boner down the"
	break;
	case 5:
	description="Concept art for Mystic Manor's exterior."
	break;
	case 6:
	description="VERY EARLY concept art for Mystic Manor's interior."
	break;
	case 7:
	description="A bit more refined concept art for Mystic Manor's interior. Ultimately, it looks nothing like this."
	break;
	case 8:
	description="A drawing of the YAYSUU's X-Treme Adventure logo, made by Middy."
	break;
	case 9:
	description="Concept art for Skelly, who will be the boss of Mystic Manor."
	break;
	case 10:
	description="Concept art for the ghosts in Mystic Manor."
	break;
	case 11:
	description="Clyde, the beloved."
	break;
	default:
	description="WOAH! UNUSED TEXT."
	break;
}
if global.key_start
{
	audio_play_sound(snd_nahnvm,1,false,global.sndvol)
	instance_destroy()
}
