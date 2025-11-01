if (visible)
{
	if (obj_camera.x < 580)
	{
		audio_stop_all()
		instance_destroy(obj_player)
	}
}