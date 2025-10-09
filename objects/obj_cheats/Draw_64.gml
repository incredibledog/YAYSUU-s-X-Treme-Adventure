/// @description Insert description here
// You can write your code in this editor
if global.mobile
{
	draw_text_yxa(x,y,string("Type in a cheat code. \n")+keyboard_string+string("\nPress Go to confirm \nType exit to leave"),"white",true,640)
}
else {
	draw_text_yxa(x,y,string("Type in a cheat code. \n") + keyboard_string + string("\nPress enter to confirm \nPress escape or B to leave \n") + rewardstring,"white",true,640)
}
