/// @description Insert description here
// You can write your code in this editor
if (global.inputtype!=3)
	return;
if global.prevroom=room_extras || global.prevroom=room_extrastages
{
	loadroom(room_extras, loadtype.menu)
}
else {
	loadroom(room_mainmenu, loadtype.menu)
}
audio_play_sound(snd_nahnvm,1,false,global.sndvol)