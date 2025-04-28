// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_windowtitle(title){
	window_set_caption(title)
	if window_get_fullscreen()
	{
		obj_newmanager.windowname = title
		obj_newmanager.windowtimer = 300
	}
}