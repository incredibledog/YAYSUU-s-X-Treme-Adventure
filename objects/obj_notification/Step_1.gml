/// @description Insert description here
// You can write your code in this editor
if !init && global.inputtype = 3
{
	if choicer
	{
		yeskey=virtual_key_add(224,320,64,64,global.p1_jumpkey)
		nokey=virtual_key_add(352,320,64,64,global.p1_dashkey)
	}
	else {
		yeskey=virtual_key_add(288,320,64,64,global.p1_jumpkey)
	}
	init=true
}