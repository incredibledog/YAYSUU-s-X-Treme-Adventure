/// @description health_system_hearts(sprite);
/// @param sprite
function health_system_hearts(argument0) {

	//Hp can't go over max hp or below 0.
	hp = (clamp(global.hp,0,global.maxhp));

	var xoffset = 32;

	//Draw hearts background
	for (var i = 0; i< global.maxhp; i++) {
	draw_sprite_ext(argument0,1,xstart+(xoffset*i),ystart,1,1,0,c_black,1);
	}

	//Draw hearts
	for (var i = 0; i< global.hp; i++) {
	draw_sprite(argument0,1,xstart+(xoffset*i),ystart);
	}





}
