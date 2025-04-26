if (global.key_jumpp)
{
	if (global.returntosettings)
		loadroom(room_options, false)
	else
		loadroom(room_idlogo, false)
	ini_open("savedata.ini")
	ini_write_real("settings","keytype",global.keytype)
	ini_close()
}