/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_f1))
{
	sprite_index = -1
	sprite_delete(thesprite)
}
else if (keyboard_check_pressed(vk_f2))
{
	thesprite = sprite_add("custom/character/yaysuubutred/sprites/idle.png", 10, false, false, 32, 32)
	sprite_index = thesprite
}