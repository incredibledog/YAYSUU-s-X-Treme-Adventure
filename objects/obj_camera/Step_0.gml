/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player) && obj_player.dieded=false
{
	camera_set_view_pos(view_camera[0],clamp(obj_player.x-(camera_get_view_width(view_camera[0]) / 2),0,room_width-camera_get_view_width(view_camera[0])),clamp(obj_player.y-(camera_get_view_height(view_camera[0]) / 2)+voffset+(vshakeoffset*vwobble),0+voffset+(vshakeoffset*vwobble),room_height-camera_get_view_height(view_camera[0])+voffset+(vshakeoffset*vwobble)))
}
if global.screenshake=true
{
	vwobble*=-1
}
else {
	vwobble=0
}
if vshakeoffset=0
{
	gamepad_set_vibration(0,0,0)
}
if vshakeoffset>0
{
	vshakeoffset-=1
	gamepad_set_vibration(0,(vwobble=-1),(vwobble=1))
}