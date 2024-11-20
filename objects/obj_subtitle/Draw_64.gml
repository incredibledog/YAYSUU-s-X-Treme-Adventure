/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_hint1)
{
	if obj_hint1.hint1=true
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,obj_hint1.hint1string)
		draw_set_font(global.font)
	}
}
if instance_exists(obj_hint2)
{
	if obj_hint2.hint2=true
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,obj_hint2.hint2string)
		draw_set_font(global.font)
	}
}
if instance_exists(obj_hint3)
{
	if obj_hint3.hint3=true
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,obj_hint3.hint3string)
		draw_set_font(global.font)
	}
}
if instance_exists(obj_hint4)
{
	if obj_hint4.hint4=true
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,obj_hint4.hint4string)
		draw_set_font(global.font)
	}
}
if instance_exists(obj_hint5)
{
	if obj_hint5.hint5=true
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,obj_hint5.hint5string)
		draw_set_font(global.font)
	}
}
if instance_exists(obj_hint6)
{
	if obj_hint6.hint6=true
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,obj_hint6.hint6string)
		draw_set_font(global.font)
	}
}
if room=room_levelselect
{
	draw_set_font(global.subtitlefont)
	draw_text(x,y,"Press 1 for Chill fields stage 1\nPress 2 for Tutorial Stage\nPress 3 for Chill fields stage 2")
}
if room=room_soundtest
{
	draw_set_font(global.subtitlefont)
	if !gamepad_is_connected(0)
	{
		draw_text(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nZ to play \nX to stop \nC to leave"))
	}
	if gamepad_is_connected(0)
	{
		draw_text(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nA to play \nB to stop \nX to leave"))
	}
}
if room=room_chillfields_boss
{
	if global.cutscenestate=1
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,"What the- ...Another robot?!")
	}
	if global.cutscenestate=2
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,"TARGET LOCKED")
	}
	if global.cutscenestate=3
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,"Must be one of Fringlebert's \ncreations.")
	}
	if global.cutscenestate=4
	{
		draw_set_font(global.subtitlefont)
		draw_text(x,y-yoff,"PREPARING TO ELIMINATE")
	}
}