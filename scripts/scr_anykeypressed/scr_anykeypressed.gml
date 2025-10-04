// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function keyboard_check_any_pressed(player){
	if player=1
	{
		return (keyboard_check_pressed(global.p1_leftkey) || keyboard_check_pressed(global.p1_rightkey) || keyboard_check_pressed(global.p1_upkey) || keyboard_check_pressed(global.p1_downkey) || keyboard_check_pressed(global.p1_jumpkey) || keyboard_check_pressed(global.p1_dashkey) || keyboard_check_pressed(global.p1_runkey) || keyboard_check_pressed(global.p1_startkey));
	}
	if player=2
	{
		return (keyboard_check_pressed(global.p2_leftkey) || keyboard_check_pressed(global.p2_rightkey) || keyboard_check_pressed(global.p2_upkey) || keyboard_check_pressed(global.p2_downkey) || keyboard_check_pressed(global.p2_jumpkey) || keyboard_check_pressed(global.p2_dashkey) || keyboard_check_pressed(global.p2_runkey) || keyboard_check_pressed(global.p2_startkey));
	}
	else {
		show_debug_message("HEY! What do you think this is, that plumber's PARTY?! P"+string(player)+" is not a valid player.")
	}
}