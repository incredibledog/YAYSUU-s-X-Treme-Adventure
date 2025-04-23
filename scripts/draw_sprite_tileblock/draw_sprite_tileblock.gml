// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_sprite_tileblock(sprite, index, xpos, ypos, tilewidth, tileheight, blend, alpha){
	for (var i = 0; i < tilewidth; i += 1)
	{
	    for (var j = 0; j < tileheight; j += 1)
		{
			draw_sprite_ext(sprite, index, xpos + (i * sprite_get_width(sprite)), ypos + (j * sprite_get_height(sprite)), 1, 1, 0, blend, alpha);
		}
	}
}