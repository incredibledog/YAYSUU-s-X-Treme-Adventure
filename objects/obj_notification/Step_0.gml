/// @description Insert description here
// You can write your code in this editor
if !byebye && !selectable
{
	image_yscale+=0.1
	if image_yscale=1
		selectable=true
}
else if byebye
{
	image_yscale-=0.1
	if image_yscale=0 {
		instance_destroy()
		if global.inputtype=3
			instance_create_depth(0,0,0,obj_mobilecontrols)
	}
}
if selectable && !byebye
{
	if global.inputtype=3
	{
		if global.key_jumpp
		{
			choice=1
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			byebye=true
			if (choicer && choice=1) || !choicer
				donotifchoice(notifid)
		}
		else if global.key_dashp
		{
			choice=0
			audio_play_sound(snd_nahnvm,1,false,global.sndvol)
			byebye=true
		}
	}
	else {
		if choicer
		{
			if global.key_upp
			{
				if choice=0
					choice=1
				else if choice=1
					choice=0
			}
			if global.key_downp
			{
				if choice=0
					choice=1
				else if choice=1
					choice=0
			}
			choice=clamp(choice,0,1)
		}
		if global.key_menuaccept
		{
			audio_play_sound(snd_confirm,1,false,global.sndvol)
			byebye=true
			if (choicer && choice=1) || !choicer
				donotifchoice(notifid)
		}
		if global.key_menuquit
		{
			audio_play_sound(snd_nahnvm,1,false,global.sndvol)
			byebye=true
		}
	}
}