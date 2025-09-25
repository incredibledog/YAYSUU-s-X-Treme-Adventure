/// @description Insert description here
// You can write your code in this editor
if spawntimer>0
{
	spawntimer--
	return;
}
if spawntimer=0
{
	instance_create_depth(x,y,401,obj_car)
	spawntimer=global.defaultfps*0.5
}