/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.subtitlefont)
if !gamepad_is_connected(0)
{
	draw_text_yxa(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nZ to play \nX to stop \nC to leave"),"white",true,500)
}
if gamepad_is_connected(0)
{
	draw_text_yxa(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nA to play \nB to stop \nX to leave"),"white",true,500)
}