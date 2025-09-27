// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sayvoiceline(voiceline,voicetext,voicecolor){ // say the line, bart!
	if audio_is_playing(voiceline)
	{
		return
	}
	else {
		audio_play_sound(voiceline,1,false)
		with instance_create_depth(0,0,0,obj_subtitle_new)
		{
			dialoguesound=voiceline
			text=voicetext
			color=voicecolor
		}
	}
}