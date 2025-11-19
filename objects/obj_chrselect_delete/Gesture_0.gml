/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=false
{
	if (global.inputtype!=3) || (global.trial) || (instance_exists(obj_notification))
		return;
	with instance_create_depth(0,0,depth-1,obj_notification)
	{
		text="Are you sure you want to delete save data for "+obj_chrselect_cursor.charname+"?"
		color="red"
		choicer=true
		notifid=1
	}
}