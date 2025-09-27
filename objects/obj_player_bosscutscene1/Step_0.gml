// walkin over to electrobot
if global.cutscenestate=0 && x<=160
{
	x+=2
	sprite_index=spr_yaysuu_walk
}
else if global.cutscenestate=0 {
	global.cutscenestate=1 // spew those words yaysuu the only playable character ever
	sayvoiceline(snd_elecboss1vo_y,"Hey, who's that?","purple")
	sprite_index=spr_yaysuu_talk_confused // MORE TALK SPRITES COMIN SOON I SWEAR...
}
if global.cutscenestate=1 && !audio_is_playing(snd_elecboss1vo_y)
{
	global.cutscenestate=2 // HEY THIS LINE'S MEANT FOR THE OTHER GUY!
	sayvoiceline(snd_elecboss2vo,"TARGET SPOTTED.","yellow")
	sprite_index=spr_yaysuu_idle
}
if global.cutscenestate=3 || global.cutscenestate=5 || global.cutscenestate=6
{
	sprite_index=spr_yaysuu_talk_confused // III SWWEEAAAARR!!!!
}
if global.cutscenestate=3 && !audio_is_playing(snd_elecboss3vo_y)
{
	global.cutscenestate=4 // HEY! THIS IS A BAD WAY TO PROGRAM A CUTSCENE! good thing it works.
	sayvoiceline(snd_elecboss4vo_y,"IDENTIFIED AS: YAYSUU. AGE: UNKNOWN. SPECIES: STICKLING. DIRECTIVE: IMMEDIATE ELIMINATION","yellow")
	sprite_index=spr_yaysuu_idle
}
if global.cutscenestate=5 && !audio_is_playing(snd_elecboss5vo_y)
{
	global.cutscenestate=6 // I'M WAITING...
	sayvoiceline(snd_elecboss6vo_y,"...wait.","purple")
}
if global.cutscenestate=6 && !audio_is_playing(snd_elecboss6vo_y)
{
	global.cutscenestate=7 // no underscore in subtitle font. Why would YAYSUU do this?
	sayvoiceline(snd_elecboss7vo_y,"CHALLENGE ACCEPTED. ENGAGING SCR BATTLE.GML.","orange")
	sprite_index=spr_yaysuu_idle
}