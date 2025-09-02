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
else if (display == 0) // skips straight to the next and retry if you're in a boss stage
{
	if global.inboss
		display=4
	else
		display=1
	audio_play_sound(snd_bang,1,false)
	bangtimer=15
}
else if display < 3 // shows the time and coin bonuses
{
	display+=1
	audio_play_sound(snd_bang,1,false)
	bangtimer=15
}
else if display = 3
{
	if yearnedscore=global.score // shows your RANK!
	{
		display++
		audio_play_sound(snd_bang,1,false)
		bangtimer=75
	}
	if yearnedscore<global.score
	{
		yearnedscore+=global.score/60
		audio_play_sound(snd_dialogue_default,0,false)
	}
}
else if display = 4
{
	display = 5
	audio_play_sound(mus_results,1,true)
}
else if display == 5
{
	display = 6
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
				case room_tutorial:
					loadroom(room_househub, loadtype.newlevel)
					stageprogress=0
					break;
				case room_chillfields_1:
					loadroom(room_chillfields_2, loadtype.newlevel)
					stageprogress=1
					break;
				case room_chillfields_2d:
					loadroom(room_chillfields_boss, loadtype.newlevel)
					stageprogress=2
					break;
				case room_chillfields_boss:
					loadroom(room_mysticmanor_1, loadtype.newlevel)
					stageprogress=3
					break;
				case room_mysticmanor_1c:
					loadroom(room_mysticmanor_2, loadtype.newlevel)
					stageprogress=4
					break;
				default:
					loadroom(room_credits, false)
					break;
			}
			savestory(stageprogress)
		}
	}
	else if global.key_dashp && global.trial
	{
		audio_play_sound(snd_confirm,1,false)
		scr_restartlevel()
	}
}