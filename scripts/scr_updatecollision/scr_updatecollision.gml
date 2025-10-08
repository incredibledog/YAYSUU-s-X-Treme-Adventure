// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_updatecollision(player){
	if (instance_exists(obj_semisolid))
	{
		with (obj_semisolid)
			collisionupdate_semisolid(player)
	}
	if (instance_exists(obj_semislope))
	{
		with (obj_semislope)
			collisionupdate_semislope(player)
	}
	if (instance_exists(obj_rubble))
	{
		with (obj_rubble)
			collisionupdate_rubble(player)
	}
}