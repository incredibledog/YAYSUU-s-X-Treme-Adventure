/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=false
{
	if (global.inputtype!=3) || (global.trial)
		return;
	ini_open("savedata.ini")
	if obj_chrselect_cursor.charlife=0
	{
		ini_section_delete("fileY")
		obj_chrselect_cursor.savelives[0]=ini_read_real("fileY","lives",3)
		obj_chrselect_cursor.savescore[0]=ini_read_real("fileY","score",0)
		obj_chrselect_cursor.savestage[0]=ini_read_real("fileY","stage",0)
		obj_chrselect_cursor.saveday[0]=ini_read_real("fileY","day",0)
		obj_chrselect_cursor.savemonth[0]=ini_read_real("fileY","month",0)
		obj_chrselect_cursor.saveyear[0]=ini_read_real("fileY","year",0)
	}
	else if obj_chrselect_cursor.charlife=1
	{
		ini_section_delete("fileT")
		obj_chrselect_cursor.savelives[1]=ini_read_real("fileT","lives",3)
		obj_chrselect_cursor.savescore[1]=ini_read_real("fileT","score",0)
		obj_chrselect_cursor.savestage[1]=ini_read_real("fileT","stage",0)
		obj_chrselect_cursor.saveday[1]=ini_read_real("fileT","day",0)
		obj_chrselect_cursor.savemonth[1]=ini_read_real("fileT","month",0)
		obj_chrselect_cursor.saveyear[1]=ini_read_real("fileT","year",0)
	}
	audio_play_sound(snd_kablooey,1,false)
	ini_close()
}