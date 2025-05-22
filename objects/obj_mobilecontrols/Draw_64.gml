/// @description Insert description here
// You can write your code in this editor
if os_type=os_android && hide=false && !gamepad_is_connected(0)
{
	if room=room_trialmenu
	{
		draw_sprite(spr_left,0,32,192)
		draw_sprite(spr_resume,0,224,192)
		draw_sprite(spr_quit,0,352,192)
		draw_sprite(spr_right,0,544,192)
	}
	else if room=room_options
	{
		draw_set_alpha(global.controlalpha)
		draw_sprite(spr_up,1,96,256)
		draw_sprite(spr_left,1,32,320)
		draw_sprite(spr_right,1,160,320)
		draw_sprite(spr_down,1,96,384)
		draw_sprite(spr_jump,1,416,384)
		draw_sprite(spr_dash,1,480,384)
		draw_set_alpha(1)
	}
	else {
		draw_set_alpha(global.controlalpha)
		draw_sprite(spr_up,0,96,256)
		draw_sprite(spr_left,0,32,320)
		draw_sprite(spr_right,0,160,320)
		draw_sprite(spr_down,0,96,384)
		draw_sprite(spr_jump,0,416,384)
		draw_sprite(spr_dash,0,480,384)
		draw_sprite(spr_run,0,544,384)
		draw_set_alpha(1)
		draw_sprite(spr_pause,0,576,32)
	}
}