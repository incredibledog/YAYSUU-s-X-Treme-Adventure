/// @description Insert description here
// You can write your code in this editor
draw_set_font(global.subtitlefont)
if global.inputtype=0
{
	draw_text_yxa(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nZ to play \nX to stop \nC to leave"),"white",true,500)
}
if global.inputtype=2
{
	draw_text_yxa(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nPress left or right to cycle \nA to play \nB to stop \nX to leave"),"white",true,500)
}
if global.inputtype=3
{
	draw_text_yxa(x,y,string("Welcome to sound test \n") + string(obj_sndtest.sndname) + string("\nTap left or right to cycle \nJUMP to play \nDASH to stop \nRUN to leave"),"white",true,500)
}