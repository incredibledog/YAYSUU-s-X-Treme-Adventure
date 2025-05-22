/// @description Insert description here
// You can write your code in this editor
if (global.inlevel && !global.inhub)
{
	if (!instance_exists(obj_stageclear))
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
		timerstring = string_replace_all(string_format(floor(timer / (global.defaultfps * global.defaultfps)), 2, 0) + ":" + string_format(floor(timer / global.defaultfps) % global.defaultfps, 2, 0) + "." + string_format(timer % global.defaultfps, 2, 0), " ", "0")
	}
	
	if (global.combo > 1)
	{
		comboshowtimer = 120
		showncombo = global.combo
	}
	else if (comboshowtimer > 0)
		comboshowtimer--
}