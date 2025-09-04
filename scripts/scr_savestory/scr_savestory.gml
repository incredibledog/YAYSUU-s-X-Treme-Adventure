// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function savestory(stageprogress){
	ini_open("savedata.ini")
	var characterfile = "file" + global.char
	ini_write_real(characterfile,"lives",global.lives)
	ini_write_real(characterfile,"stage",stageprogress)
	ini_write_real(characterfile,"month",date_get_month(date_current_datetime()))
	ini_write_real(characterfile,"day",date_get_day(date_current_datetime()))
	ini_write_real(characterfile,"year",date_get_year(date_current_datetime()))
	global.score=0
	ini_close()
}