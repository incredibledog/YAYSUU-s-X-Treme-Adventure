// walkin over to electrobot
if global.cutscenestate=0 && x<=160
{
	x+=2
	sprite_index=global.char="Y" ? spr_yaysuu_walk : spr_teddy_walk
}
else if global.cutscenestate=0 {
	global.cutscenestate=1 // spew those words yaysuu the only playable character ever
	x=160
	if global.char="Y"
	{
		sayvoiceline(snd_elecboss1vo_y,"Hey, who's that?","purple")
		sprite_index=spr_yaysuu_talk_surprised
	}
	else if global.char="T"
	{
		sayvoiceline(snd_elecboss1vo_t,"Hmph. Well, this oughta be somethin'.","orange")
		sprite_index=spr_teddy_talk_unamused
	}
}
if global.cutscenestate=1 && !audio_is_playing(snd_elecboss1vo_y) && !audio_is_playing(snd_elecboss1vo_t)
{
	global.cutscenestate=2 // HEY THIS LINE'S MEANT FOR THE OTHER GUY!
	sayvoiceline(snd_elecboss2vo,"TARGET SPOTTED.","yellow")
	sprite_index=global.char="Y" ? spr_yaysuu_idle : spr_teddy_idle
}
if global.cutscenestate=3 || global.cutscenestate=5
{
	if global.char="Y"
		sprite_index=spr_yaysuu_talk_confused
	else if global.char="T"
	{
		if global.cutscenestate=3
			sprite_index=spr_teddy_talk_assertive
		else
			sprite_index=spr_teddy_talk_unamused
	}
}
if global.cutscenestate=3 && !audio_is_playing(snd_elecboss3vo_y) && !audio_is_playing(snd_elecboss3vo_t)
{
	global.cutscenestate=4 // HEY! THIS IS A BAD WAY TO PROGRAM A CUTSCENE! good thing it works.
	if global.char="Y"
	{
		sayvoiceline(snd_elecboss4vo_y,"IDENTIFIED AS: YAYSUU. AGE: UNKNOWN. SPECIES: STICKLING. DIRECTIVE: IMMEDIATE ELIMINATION","yellow")
		sprite_index=spr_yaysuu_idle
	}
	else if global.char="T"
	{
		sayvoiceline(snd_elecboss4vo_t,"IDENTIFIED AS: TEDDY. AGE: UNKNOWN. SPECIES: STICKLING. DIRECTIVE: ELIMINATION BY PROXY","yellow")
		sprite_index=spr_teddy_idle
	}
}
if global.cutscenestate=5 && !audio_is_playing(snd_elecboss5vo_y) && !audio_is_playing(snd_elecboss5vo_t)
{
	global.cutscenestate=6 // I'M WAITING...
	if global.char="Y"
	{
		sayvoiceline(snd_elecboss6vo_y,"...wait.","purple")
		sprite_index=spr_yaysuu_talk_surprised
	}
	else if global.char="T"
	{
		sayvoiceline(snd_elecboss6vo_t,"DETECTED FAMILIAL RELATION WITH MAIN TARGET. CANNOT BE ALLOWED TO EXIST","red")
		sprite_index=spr_teddy_idle
	}
}
if global.cutscenestate=6 && !audio_is_playing(snd_elecboss6vo_y) && !audio_is_playing(snd_elecboss6vo_t)
{
	global.cutscenestate=7 // no underscore in subtitle font. Why would YAYSUU do this?
	if global.char="Y"
	{
		sayvoiceline(snd_elecboss7vo_y,"CHALLENGE ACCEPTED. ENGAGING SCR BATTLE.GML.","red")
		sprite_index=spr_yaysuu_idle
	}
	if global.char="T"
	{
		sayvoiceline(snd_elecboss7vo_t,"Well, I'd like to see you try!","orange")
		sprite_index=spr_teddy_talk_assertive
	}
}
if global.cutscenestate=8
{
	instance_destroy(obj_subtitle_new)
	audio_group_stop_all(voicelines)
	x=160
	if global.char="Y"
		sprite_index=spr_yaysuu_idle
	else if global.char="T"
		sprite_index=spr_teddy_idle
}