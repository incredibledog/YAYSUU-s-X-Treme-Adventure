/// @description Insert description here
// You can write your code in this editor
if global.key_menuaccept && !instance_exists(obj_notification)
{
	ini_open("savedata.ini")
	var unlocked=ini_read_real("extras","extrastageunlock",false)
	ini_close()
	if !unlocked
	{
		with instance_create_depth(0,0,0,obj_notification)
		{
			text="You have unlocked `cyEXTRA STAGES `clin the `cyEXTRAS `clmenu! Go try them out!"
			color="white"
			notifid=3
			choicer=false
		}
	}
	else {
		loadroom(room_titlescreen,loadtype.menu)
	}
}