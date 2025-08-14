/// @description Insert description here
// You can write your code in this editor
if (global.inlevel && !global.inhub)
{
	if (!instance_exists(obj_stageclear)) && (!instance_exists(obj_gameover)) && (!instance_exists(obj_dialoguebox))
	{
		var dotime = true
		if instance_exists(obj_goalflag)
		{
			if obj_goalflag.winning=true
				instance_create_layer(320, 160, "endlevel", obj_stageclear)
			else if (obj_goalflag.touched)
				dotime = false
		}
		if (dotime)
		{
			timer++
			if (timer % global.defaultfps == 0)
				timebonus -= 10
			timebonus=clamp(timebonus,0,3000)
		}
		if global.speedrun
			timerstring = string_replace_all(string_format(floor(timer / 3600), 2, 0) + ":" + string_format(floor(timer / 60) % 60, 2, 0) + "." + string_format(timer % 60, 2, 0), " ", "0")
		else
			timerstring = string_replace_all(string_format(floor(timer / 3600), 2, 0) + ":" + string_format(floor(timer / 60) % 60, 2, 0), " ", "0")
	}
	if (global.combo != 0)
	{
		if (global.combo > 1) && (global.combo < 3)
		{
			combosprite = spr_good
		}
		else if (global.combo > 3) {
			combosprite = spr_cool
		}
	}
	else
	{
		combosprite = combosprite
	}
	if (global.combo > 1)
	{
		comboshowtimer = 120
		showncombo = global.combo
	}
	else if (comboshowtimer > 0)
		comboshowtimer--
}