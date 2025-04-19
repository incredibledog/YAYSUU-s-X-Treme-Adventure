/// @description Insert description here
// You can write your code in this editor
x=obj_player.x+10*obj_player.image_xscale
y=obj_player.y
image_xscale=obj_player.image_xscale
if trailtimer=0
{
	instance_create_depth(x-10*obj_player.image_xscale,y,depth,obj_boost_trail)
	trailtimer=room_speed*0.2
}
if trailtimer>0
{
	trailtimer--
}