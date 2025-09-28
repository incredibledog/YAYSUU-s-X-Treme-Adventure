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
		case vk_rcontrol: return "RCTRL";
		case vk_control: return "CTRL";
		case vk_escape: return "ESCAPE";
		case vk_tab: return "TAB";
		case vk_alt: return "ALT";
		case vk_backspace: return "BACKSPACE";
		case vk_home: return "HOME";
		case vk_insert: return "INSERT";
		case vk_end: return "END";
		case vk_delete: return "DELETE";
		case vk_pagedown: return "PGDOWN";
		case vk_pageup: return "PGUP";
		case vk_f1: return "F1";
		case vk_f2: return "F2";
		case vk_f3: return "F3";
		case vk_f4: return "F4";
		case vk_f5: return "F5";
		case vk_f6: return "F6";
		case vk_f7: return "F7";
		case vk_f8: return "F8";
		case vk_f9: return "F9";
		case vk_f10: return "F10";
		case vk_f11: return "F11";
		case vk_f12: return "F12";
		case vk_numpad0: return "NUM0";
		case vk_numpad1: return "NUM1";
		case vk_numpad2: return "NUM2";
		case vk_numpad3: return "NUM3";
		case vk_numpad4: return "NUM4";
		case vk_numpad5: return "NUM5";
		case vk_numpad6: return "NUM6";
		case vk_numpad7: return "NUM7";
		case vk_numpad8: return "NUM8";
		case vk_numpad9: return "NUM9";
		case vk_add: return "PLUS";
		case vk_subtract: return "MINUS"
		case vk_divide: return "DIVIDE";
		default: return chr(keyid);
	}
}