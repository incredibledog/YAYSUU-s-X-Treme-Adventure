/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_goalflag)
{
	if obj_goalflag.winning=true
	{
		instance_deactivate_object(obj_mobilecontrols)
	}
}