/// @description Insert description here
// You can write your code in this editor
if (!donotannoymewhiletesting)
{
	if touchingplayer(x, y) && !hint
	{
		hint=true
		if !instance_exists(obj_hintdialoguebox)
		{
			with instance_create_depth(0,0,depth,obj_hintdialoguebox)
			{
				text=other.subtitle
				color="purple"
				nobox=true
			}
		}
		audio_play_sound(snd_hint,1,false)
	}
	if !touchingplayer(x, y) && hint
	{
		hint=false
		instance_destroy(obj_hintdialoguebox)
	}
}