// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function skin_getsprite(spritename){
	ini_open("custom/character/" + global.skinname + "/sprites/" + spritename + ".ini")
	var newsprite = sprite_add("custom/character/" + global.skinname + "/sprites/" + spritename + ".png", ini_read_real("sprite", "framecount", 1), false, false, ini_read_real("sprite", "originx", 32), ini_read_real("sprite", "originy", 32))
	sprite_set_speed(newsprite, ini_read_real("sprite", "fps", 8), spritespeed_framespersecond)
	ini_close()
	return newsprite
}