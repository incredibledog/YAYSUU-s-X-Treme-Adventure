// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_updatecollision(){
	if (instance_exists(obj_semisolid))
	{
		with (obj_semisolid_gothrough)
			collisionupdate_semisolid()
	}
	if (instance_exists(obj_semislope))
	{
		with (obj_semislope)
			collisionupdate_semislope()
	}
	if (instance_exists(obj_rubble))
	{
		with (obj_rubble)
			collisionupdate_rubble()
	}
}