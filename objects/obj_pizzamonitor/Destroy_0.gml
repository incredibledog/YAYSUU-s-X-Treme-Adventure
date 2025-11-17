/// @description Insert description here
// You can write your code in this editor
event_inherited();
if !whichplayerispurpeguymurderer.isotherplayer
	global.hp=global.maxhp
else 
	global.p2hp=global.p2maxhp
audio_play_sound(snd_heal,1,false,global.sndvol)
