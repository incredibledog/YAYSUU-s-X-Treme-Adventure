/// @description health_system_hearts(sprite);
function health_system_hearts(healthsprite, hp, maxhp) {
	//Hp can't go over max hp or below 0.
	hp = clamp(hp,0,maxhp)
	var xoffset = sprite_get_width(healthsprite)
	//Draw hearts background
	for (var i = 0; i< maxhp; i++) {
		draw_sprite_ext(healthsprite,1,xstart+(xoffset*i),ystart,1,1,0,c_black,1);
	}
	//Draw hearts
	for (var i = 0; i< hp; i++) {
		draw_sprite(healthsprite,1,xstart+(xoffset*i),ystart);
	}
}
