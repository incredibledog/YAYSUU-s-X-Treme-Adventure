x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
if layer_exists("layer1")
{
	layer_x("layer1", x/8)
	if indoors=false
	{
		layer_y("layer1",(y))
	}
	else {
		layer_y("layer1", (y/8)+voffset)
	}
}