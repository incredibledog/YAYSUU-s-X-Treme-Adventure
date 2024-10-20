/// @description Insert description here
// You can write your code in this editor
keyleft=keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")) || gamepad_axis_value(0,gp_axislh) < -0.352 || gamepad_button_check_pressed(0,gp_padl)
keyright=keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")) || gamepad_axis_value(0,gp_axislh) > 0.352 || gamepad_button_check_pressed(0,gp_padr)
keyplay=keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0,gp_face1)
keystop=keyboard_check_pressed(ord("X")) || keyboard_check_pressed(vk_shift) || gamepad_button_check_pressed(0,gp_face2)
keyleave=keyboard_check_pressed(ord("C")) || keyboard_check_pressed(vk_rcontrol) || gamepad_button_check_pressed(0,gp_face3)
select=clamp(select,0,22)
if keyleft && !audio_is_playing(currentsound)
{
	select-=1
}
if keyright && !audio_is_playing(currentsound)
{
	select+=1
}
if keyplay
{
	audio_stop_all()
	audio_play_sound(currentsound,1,false)
}
if keystop
{
	audio_stop_all()
}
if keyleave
{
	global.nextroom=room_titlescreen
	obj_fadeblack.fading=true
}
switch select
{
	case 0:
		currentsound=mus_title
		sndname="Title Theme  YXA OST"
	break;
	case 1:
		currentsound=mus_chrselect
		sndname="Choose your Buddy!  YXA OST"
	break;
	case 2:
		currentsound=mus_chillfields_1
		sndname="Sunnier Morning (Chill Fields 1)\nYXA OST"
	break;
	case 3:
		currentsound=mus_tutorial
		sndname="Tutorial  YXA OST"
	break;
	case 4:
		currentsound=mus_yaysuuwin
		sndname="Stage Clear! YAYSUU  YXA OST"
	break;
	case 5:
		currentsound=mus_teddywin
		sndname="Stage Clear! Teddy  YXA OST"
	break;
	case 6:
		currentsound=mus_dead
		sndname="Oops!  YXA OST"
	break;
	case 7:
		currentsound=mus_gameover_y
		sndname="Game Over  YXA OST"
	break;
	case 8:
		currentsound=mus_chillfields_2
		sndname="Sunset Rush (Chill Fields 2)\nYXA OST"
	break;
	case 9:
		currentsound=snd_airdash
		sndname="Sound 1"
	break;
	case 10:
		currentsound=snd_boing
		sndname="Sound 2"
	break;
	case 11:
		currentsound=snd_coin
		sndname="Sound 3"
	break;
	case 12:
		currentsound=snd_confirm
		sndname="Sound 4"
	break;
	case 13:
		currentsound=snd_doublejump
		sndname="Sound 5"
	break;
	case 14:
		currentsound=snd_flagspin
		sndname="Sound 6"
	break;
	case 15:
		currentsound=snd_hint
		sndname="Sound 7"
	break;
	case 16:
		currentsound=snd_jump
		sndname="Sound 8"
	break;
	case 17:
		currentsound=snd_kablooey
		sndname="Sound 9"
	break;
	case 18:
		currentsound=snd_ouchie
		sndname="Sound 10"
	break;
	case 19:
		currentsound=snd_slide
		sndname="Sound 11"
	break;
	case 20:
		currentsound=snd_stomp
		sndname="Sound 12"
	break;
	case 21:
		currentsound=snd_heal
		sndname="Sound 13"
	break;
	case 22:
		currentsound=snd_extralife
		sndname="Sound 14"
	break;
}