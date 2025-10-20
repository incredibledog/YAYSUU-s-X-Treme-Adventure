/// @description which level am i on
// You can write your code in this editor
image_alpha=1
x=288 // sorry, this is hardcoded
y=192
goawaytime=60
goawayspeed=0
switch room {
	case room_chillfields_1:
	sprite_index=spr_chillfields1
	break;
	case room_chillfields_2:
	sprite_index=spr_chillfields2
	break;
	case room_mysticmanor_1:
	sprite_index=spr_mysticmanor1 
	break;
	case room_mysticmanor_2:
	sprite_index=spr_mysticmanor2
	break;
	case room_glowstickcity:
	sprite_index=spr_glowstickcity
	break;
	case room_tutorial:
	sprite_index=spr_tutorial
	break;
	case room_chilifields_a:
	sprite_index=spr_chilifields
	break;
	default:
	image_alpha=0
	break;
}