x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);
var voffset = 0
if layer_exists("layer2")
{
	layer_x("layer2", x/2);
	switch room
	{
		case room_chillfields_1:
		voffset=500
		break;
		case room_chillfields_2c:
		voffset=0
		break;
		case room_mysticmanor_1:
		voffset=0
		break;
		case room_glowstickcity:
		voffset=0
		break;
		default:
		voffset=100
		break;
	}
	layer_y("layer2", (y/2)+voffset);
}