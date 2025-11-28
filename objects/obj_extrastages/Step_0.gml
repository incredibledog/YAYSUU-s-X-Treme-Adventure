/// @description Insert description here
// You can write your code in this editor

t += 1
layer_y(layer_get_id("Background"), sin(t / 32) * 32)

if xoffset=632
	xoffset=0
else
	xoffset+=2
if instance_exists(obj_notification)
	return;
var prevselect = select
if global.key_leftp
{
	select-=1
	audio_play_sound(snd_move,1,false,global.sndvol)
	changedlevel = true
}
else if global.key_rightp
{
	select+=1
	audio_play_sound(snd_move,1,false,global.sndvol)
	changedlevel = true
}
if global.indev
	select=clamp(select,0,2) // nuh uh
else
	select=clamp(select,0,1)
if (changedlevel)
{
	switch select
	{
		case 0:
			currentlevel=room_glowstickcity
			endlevel=room_glowstickcity
			lvlname="Glowstick City (Uncanny Cat Golf)"
			sprname=spr_glowstickcityscroll
			bosslvl=false
			break;
		case 1:
			currentlevel=room_chilifields_a
			endlevel=room_chilifields_e
			lvlname="Chili Fields (Hard Mode)"
			sprname=spr_chilifieldsscroll
			bosslvl=false
			break;
		case 2:
			currentlevel=room_dev
			endlevel=room_dev
			lvlname="Fun Dev Room!"
			sprname=spr_devroomscroll
			bosslvl=false
			break;
	}

	ini_open("savedata.ini")
	hiscore=ini_read_real("records",string(endlevel)+string("_score"),0)
	timer = ini_read_real("records",string(endlevel)+string("_time"),359999)
	timestring=string_replace_all(string_format(floor(timer / 3600), 2, 0) + ":" + string_format(floor(timer / 60) % 60, 2, 0) + "." + string_format(timer % 60, 2, 0), " ", "0")
	ini_close()
	if hiscore>=2500
		rank=4
	else if hiscore>=2000
		rank=3
	else if hiscore>=1500
		rank=2
	else if hiscore>=1000
		rank=1
	else
		rank=0
}
changedlevel = false

if global.key_menuaccept
{
	audio_stop_all()
	audio_play_sound(snd_confirm,1,false,global.sndvol)
	loadnewstage(3, currentlevel)
}
else if global.key_menuquit
{
	audio_stop_all()
	audio_play_sound(snd_nahnvm,1,false,global.sndvol)
	loadroom(room_charselect, loadtype.menu)
}
if global.key_runp && !instance_exists(obj_notification)
{
	with instance_create_depth(0,0,depth-1,obj_notification)
	{
		text="Are you sure you want to delete ALL Trial Mode and Extra Stages records?"
		color="red"
		choicer=true
		notifid=5
	}
}