/// @description Insert description here
// You can write your code in this editor
if obj_chrselect_cursor.selected=true && obj_chrselect_cursor.chos=chosindex && sprite_index!=selectedsprite
{
	sprite_index=selectedsprite
	image_index=0
}

var pos
if (verticalshift)
	pos = y
else
	pos = x
if (obj_chrselect_cursor.chos == 1.5)
{
	pos = ((pos - shiftedpos) / 1.5) + shiftedpos
}
else
{
	pos = ((pos - normalpos) / 1.5) + normalpos
}

if (verticalshift)
	y = pos
else
	x = pos