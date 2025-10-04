/// @description Insert description here
// You can write your code in this editor
event_inherited();
var whichplayer = scr_temphacky_closestplayer()
if !whichplayer.isotherplayer
	global.hp=global.maxhp
else 
	global.p2hp=global.p2maxhp
audio_play_sound(snd_heal,1,false)
