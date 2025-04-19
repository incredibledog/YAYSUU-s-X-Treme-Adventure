/// @description Insert description here
// You can write your code in this editor
if os_type=os_android
{
	if room=room_trialmenu
	{
		keyleft=virtual_key_add(32,192,64,64,vk_left)
		keyjump=virtual_key_add(224,192,64,64,vk_space)
		keydash=virtual_key_add(352,192,64,64,vk_shift)
		keyright=virtual_key_add(544,192,64,64,vk_right)
	}
	else {
		keyup=virtual_key_add(96,256,64,64,vk_up)
		keyleft=virtual_key_add(32,320,64,64,vk_left)
		keyright=virtual_key_add(160,320,64,64,vk_right)
		keydown=virtual_key_add(96,384,64,64,vk_down)
		keyjump=virtual_key_add(416,384,64,64,vk_space)
		keydash=virtual_key_add(480,384,64,64,vk_shift)
		if !(room=room_options)
		{
			keyrun=virtual_key_add(544,384,64,64,vk_control)
			keypause=virtual_key_add(576,32,32,32,vk_enter)
		}
	}
}
hide=false