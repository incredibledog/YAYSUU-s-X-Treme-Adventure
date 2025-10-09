/// @description Insert description here
// You can write your code in this editor
var prevstrlen=strlen
if global.inputtype=3
{
	str="Tap an option! Tap an option! Tap an option! "
}
else {
	str=obj_mainmenu_cursor.menustring
}
strlen=string_length(str)
if prevstrlen!=strlen
{
	xoffset=0
}