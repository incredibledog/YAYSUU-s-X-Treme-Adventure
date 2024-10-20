/// @description Insert description here
// You can write your code in this editor
if room=room_tutorial
{
	global.subtitlefont=font_add_sprite_ext(spr_subtitlefont_b, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,!?",false,0)
}
else {
global.subtitlefont=font_add_sprite_ext(spr_subtitlefont, "()[]!#$%'*,.?@^abcdefghijklmnopqrstuvwxyz~{}0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ",false,0)
}