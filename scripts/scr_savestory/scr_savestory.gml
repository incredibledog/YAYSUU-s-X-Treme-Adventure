// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function savestory(stageprogress){
	ini_open("savedata.ini")
	if global.char="Y"
	{
		ini_write_real("fileY","lives",global.lives)
		ini_write_real("fileY","stage",stageprogress)
		ini_write_real("fileY","month",date_get_month(date_current_datetime()))
		ini_write_real("fileY","day",date_get_day(date_current_datetime()))
		ini_write_real("fileY","year",date_get_year(date_current_datetime()))
	}
	if global.char="T"
	{
		ini_write_real("fileT","lives",global.lives)
		ini_write_real("fileT","stage",stageprogress)
		ini_write_real("fileT","month",date_get_month(date_current_datetime()))
		ini_write_real("fileT","day",date_get_day(date_current_datetime()))
		ini_write_real("fileT","year",date_get_year(date_current_datetime()))
	}
	global.score=0
	ini_close()
}