/// @description Insert description here
// You can write your code in this editor
if (!global.mobile)
	return;
obj_mainmenu_cursor.chos=3
obj_mainmenu_cursor.nextroom=room_options
obj_mainmenu_cursor.image_alpha=1
obj_mainmenu_cursor.image_speed=1
obj_mainmenu_cursor.delay=60 
obj_mainmenu_cursor.selected=true
audio_play_sound(snd_confirm,1,false,global.sndvol)