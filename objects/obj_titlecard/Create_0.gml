/// @description which level am i on
// You can write your code in this editor
x=288 // sorry, this is hardcoded
y=192
goawaytime=room_speed*1
goawayspeed=0
switch room {
	case room_chillfields_1:
	sprite_index=spr_chillfields1
	break;
	case room_chillfields_2:
	sprite_index=spr_chillfields2
	break;
	case room_chillfields_2b:
	image_alpha=0
	break;
	case room_tutorial:
	sprite_index=spr_tutorial
	break;
}