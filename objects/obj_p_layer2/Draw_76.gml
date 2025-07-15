x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
if layer_exists("layer2")
{
	layer_x("layer2", x/6)
	if indoors=false
	{
		layer_y("layer2",(y))
	}
	else {
		layer_y("layer2", (y/6)+voffset)//jfgsuhdgjkb
	}
}