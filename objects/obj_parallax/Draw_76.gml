/// @description Insert description here
// You can write your code in this editor
if (!global.inlevel)
	return;
x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if layer_exists("layer2")
{
	layer_x("layer2", (x/6))
	if indoors
		layer_y("layer2",y)
	else
		layer_y("layer2",(y/6)+(obj_spawn.y/2))
}
if layer_exists("layer1")
{
	layer_x("layer1", (x/8)+320)
	if indoors
		layer_y("layer1",y)
	else
		layer_y("layer1", (y/8))
}