/// @description Insert description here
// You can write your code in this editor
if (image_alpha < 1)
	image_alpha += 0.05
if (image_xscale > 1)
{
	image_xscale -= 0.01
	image_yscale = image_xscale
}

if begintimer > 0
{
	begintimer--
	return;
}
if bangtimer>0
	bangtimer--
else if (display == 0)
{
	if global.inboss
		display=4
	else
		display=1
	audio_play_sound(snd_bang,1,false)
	bangtimer=15
}
else if display < 4
{
	display+=1
	audio_play_sound(snd_bang,1,false)
	bangtimer=15
}
else if display == 4
{
	display = 5
	virtual_key_add(224,416,96,32,vk_space)
	virtual_key_add(320,416,96,32,vk_shift)
}
else if (!obj_fadeblack.fading)
{
	if global.key_jumpp
	{
		audio_play_sound(snd_confirm,1,false)
		if global.trial
			loadroom(room_trialmenu, loadtype.menu)
		else
		{
			switch (room)
			{
				case room_chillfields_1:
					loadroom(room_chillfields_2, loadtype.newlevel)
					break;
				case room_chillfields_2d:
					loadroom(room_chillfields_boss, loadtype.newlevel)
					break;
				case room_chillfields_boss:
					loadroom(room_mysticmanor_1, loadtype.newlevel)
					break;
				case room_mysticmanor_1:
					loadroom(room_mysticmanor_2, loadtype.newlevel)
					break;
				default:
					loadroom(room_househub, loadtype.newlevel)
					break;
			}
		}
	}
	else if global.key_dashp
	{
		audio_play_sound(snd_confirm,1,false)
		scr_restartlevel()
	}
}