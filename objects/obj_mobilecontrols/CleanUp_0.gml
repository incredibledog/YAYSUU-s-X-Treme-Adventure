/// @description Insert description here
// You can write your code in this editor
if os_type=os_android
{
	virtual_key_delete(keyleft)
	virtual_key_delete(keyright)
	virtual_key_delete(keyjump)
	virtual_key_delete(keydash)
	if !(room=room_trialmenu)
	{
		virtual_key_delete(keyup)
		virtual_key_delete(keydown)
	}
	if !(room=room_trialmenu) && !(room=room_options)
	{
		virtual_key_delete(keyrun)
		virtual_key_delete(keypause)
	}
}