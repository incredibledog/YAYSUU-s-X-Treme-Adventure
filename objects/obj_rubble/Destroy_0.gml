/// @description Insert description here
// You can write your code in this editor
instance_destroy(mycollision)
audio_play_sound(breaksound, 1, false, 1, 0, random_range(0.8, 1.2))
scr_shake(2, true)
repeat (3)
{
	with(instance_create_depth(x, y, depth, obj_rubbledebris))
	{
		sprite_index = other.debrissprite
		if (other.destroyedbyplayer)
		{
			hsp = (sqrt(abs(obj_player.hsp)) * sign(obj_player.hsp)) + random_range(-2, 4)
			vsp = (sqrt(abs(obj_player.vsp)) * sign(obj_player.vsp)) + random_range(-6, 0)
		}
		else
		{
			hsp = random_range(-6, 6)
			vsp = random_range(8, 0)
		}
		rsp = random_range(-10, 10)
	}
}
global.scoreadd += 5