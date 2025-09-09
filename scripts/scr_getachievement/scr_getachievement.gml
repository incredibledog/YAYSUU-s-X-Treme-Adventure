// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getachievement(achid){
	ini_open("savedata.ini")
	var ach=ini_read_real("achievements",achid,false)
	ini_close()
	return ach
}