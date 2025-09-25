// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function keytostring(keyid){
	switch keyid
	{
		case vk_left: return "LEFT";
		case vk_right: return "RIGHT";
		case vk_up: return "UP";
		case vk_down: return "DOWN";
		case vk_space: return "SPACE";
		case vk_shift: return "SHIFT";
		case vk_enter: return "ENTER";
		case vk_lcontrol: return "LCTRL";
		case vk_control: return "CTRL";
		case vk_tab: return "TAB";
		case vk_alt: return "ALT";
		case vk_backspace: return "BACKSPACE";
		case vk_home: return "HOME";
		case vk_insert: return "INSERT";
		case vk_end: return "END";
		case vk_delete: return "DELETE";
		case vk_pagedown: return "PGDOWN";
		case vk_pageup: return "PGUP";
		default: return chr(keyid);
	}
}