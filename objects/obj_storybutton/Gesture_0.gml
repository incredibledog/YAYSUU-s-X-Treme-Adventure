/// @description Insert description here
// You can write your code in this editor
if (os_type != os_android)
	return;
obj_mainmenu_cursor.chos=1
global.nextroom=room_intro
global.trial=false
obj_mainmenu_cursor.image_alpha=1
obj_mainmenu_cursor.image_speed=1
obj_mainmenu_cursor.delay=60 
obj_mainmenu_cursor.selected=true
audio_play_sound(snd_confirm,1,false)