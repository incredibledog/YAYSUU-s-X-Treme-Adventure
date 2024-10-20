/// @description Insert description here
// You can write your code in this editor
image=0
if room=room_intro
{
	if global.char="Y"
	{
		sprite=spr_yaysuuintro
		limit=5
	}
	if global.char="T"
	{
		sprite=spr_teddyintro
		limit=4
	}
	global.nextroom=room_househub
	song=mus_cutscene
}
if room=room_ending
{
	sprite=spr_ending
	limit=5
	global.nextroom=room_titlescreen
	song=mus_night
}