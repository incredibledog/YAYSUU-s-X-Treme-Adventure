// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function donotifchoice(notifid){
	switch notifid
	{
		case 0: // use for notifs that don't do anything
		break;
		case 1: // story save deletion
		ini_open("savedata.ini")
		var filename=""
		var charlife=obj_chrselect_cursor.charlife
		if obj_chrselect_cursor.charlife=0
			filename="fileY"
		else if obj_chrselect_cursor.charlife=1
			filename="fileT"
		ini_section_delete(filename)
		obj_chrselect_cursor.savelives[charlife]=ini_read_real(filename,"lives",3)
		obj_chrselect_cursor.savescore[charlife]=ini_read_real(filename,"score",0)
		obj_chrselect_cursor.savestage[charlife]=ini_read_real(filename,"stage",0)
		obj_chrselect_cursor.saveday[charlife]=ini_read_real(filename,"day",0)
		obj_chrselect_cursor.savemonth[charlife]=ini_read_real(filename,"month",0)
		obj_chrselect_cursor.saveyear[charlife]=ini_read_real(filename,"year",0)
		audio_play_sound(snd_kablooey,1,false,global.sndvol)
		ini_close()
		break;
		case 2: // achievement save deletion
		audio_play_sound(snd_kablooey,1,false,global.sndvol)
		ini_open("savedata.ini")
		ini_section_delete("achievements")
		ini_close()
		with obj_achievements
			getachievementdescriptions()
		break;
		case 3: // unlock extra stages
		ini_open("savedata.ini")
		ini_write_real("extras","extrastageunlock",true)
		ini_close()
		loadroom(room_titlescreen,loadtype.menu)
		break;
		case 4: // reset ALL data
		if file_exists("savedata.ini")
			file_delete("savedata.ini")
		settings_init()
		audio_play_sound(snd_kablooey,1,false,global.sndvol)
		break;
		case 5: // reset records
		audio_play_sound(snd_kablooey,1,false,global.sndvol)
		ini_open("savedata.ini")
		ini_section_delete("records")
		ini_close()
		if (instance_exists(obj_trialmenu))
		{
			obj_trialmenu.changedlevel=true
		}
		if (instance_exists(obj_extrastages))
		{
			obj_extrastages.changedlevel=true
		}
		break;
		case 6: // quit game
		game_end()
		break;
		default:
		show_error("INVALID NOTIF ID! STUPID! See scr_donotifchoice for more info.",false)
		break;
	}
}