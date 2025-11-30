/// @description Insert description here
// You can write your code in this editor
if global.inputtype = 3
{
	hide=false
	if room=room_trialmenu || room=room_extrastages
	{
		keyleft=virtual_key_add(96,192,64,64,global.p1_leftkey)
		keyrun=virtual_key_add(224,192,64,64,global.p1_runkey)
		keyjump=virtual_key_add(288,192,64,64,global.p1_jumpkey)
		keydash=virtual_key_add(352,192,64,64,global.p1_dashkey)
		keyright=virtual_key_add(480,192,64,64,global.p1_rightkey)
	}
	if room=room_soundtest
	{
		keyleft=virtual_key_add(192,352,64,64,global.p1_leftkey)
		keyright=virtual_key_add(384,352,64,64,global.p1_rightkey)
		keyjump=virtual_key_add(256,352,64,64,global.p1_jumpkey)
		keydash=virtual_key_add(320,352,64,64,global.p1_dashkey)
		keyrun=virtual_key_add(288,416,64,64,global.p1_runkey)
	}
	else if room=room_options || room=room_extras {
		keyup=virtual_key_add(96-global.controldistance,256,64,64,global.p1_upkey)
		keyleft=virtual_key_add(32-global.controldistance,320,64,64,global.p1_leftkey)
		keyright=virtual_key_add(160-global.controldistance,320,64,64,global.p1_rightkey)
		keydown=virtual_key_add(96-global.controldistance,384,64,64,global.p1_downkey)
		keyjump=virtual_key_add(416+global.controldistance,384,64,64,global.p1_jumpkey)
		keydash=virtual_key_add(480+global.controldistance,384,64,64,global.p1_dashkey)
		keyrun=virtual_key_add(544+global.controldistance,384,64,64,global.p1_runkey)
	}
	else if global.inlevel {
		keyup=virtual_key_add(96-global.controldistance,256,64,64,global.p1_upkey)
		keyleft=virtual_key_add(32-global.controldistance,320,64,64,global.p1_leftkey)
		keyright=virtual_key_add(160-global.controldistance,320,64,64,global.p1_rightkey)
		keydown=virtual_key_add(96-global.controldistance,384,64,64,global.p1_downkey)
		keyjump=virtual_key_add(416+global.controldistance,384,64,64,global.p1_jumpkey)
		keydash=virtual_key_add(480+global.controldistance,384,64,64,global.p1_dashkey)
		keyrun=virtual_key_add(544+global.controldistance,384,64,64,global.p1_runkey)
		keypause=virtual_key_add(576,32,32,32,global.p1_startkey)
	}
	else {
		hide=true
	}
}
else {
	hide=true
}