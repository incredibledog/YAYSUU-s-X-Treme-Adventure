// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function obtainachievement(achid){
	ini_open("savedata.ini")
	var ach=ini_read_real("achievements",achid,false)
	if !ach
	{
		ini_write_real("achievements",achid,true)
		with instance_create_depth(0,0,0,obj_achievementnotif)
		{
			achiveid=achid
		}
	}
	ini_close()
}