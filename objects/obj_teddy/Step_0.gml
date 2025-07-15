// WHAT?! WHAT?! WHAT?!
// i'm ACTUALLY using the obj_teddy for something. Well. something for fortress fringlebert
// he follows you around like a pizza tower toppin (Literally. i copy pasted the code from sage for the most part)
// ideally somewhere around fortress fringlebert he should take over as the leader and then the other brother will be following
// kthxbai
image_alpha = obj_player.image_alpha;
var grounded = place_meeting(x,y+1,obj_playercollision) || place_meeting(x,y+1,obj_collision) || place_meeting(x,y+1,obj_semisolid_new)
if global.char="Y"
{
	if (obj_player.hsp != 0) {
		if abs(obj_player.hsp)>obj_player.walkspeed
		{
			sprite_index=spr_teddy_run
		}
		else {
			sprite_index=spr_teddy_walk
		}
	}
	else {
		if grounded
		{
			sprite_index=spr_teddy_idle
		}
		else {
			sprite_index=spr_teddy_fall
		}
	}
}
else
{
	if (obj_player.hsp != 0) {
		if abs(obj_player.hsp)>obj_player.walkspeed
		{
			sprite_index=spr_yaysuu_run
		}
		else {
			sprite_index=spr_yaysuu_walk
		}
	}
	else {
		if grounded
		{
			sprite_index=spr_yaysuu_idle
		}
		else {
			sprite_index=spr_yaysuu_fall
		}
	}
}
depth = obj_player.depth+1;
ds_queue_enqueue(followingqueue, obj_player.x);
ds_queue_enqueue(followingqueue, obj_player.y);
    
if (ds_queue_size(followingqueue)) > 20
{
    var followx = ds_queue_dequeue(followingqueue)
    y = ds_queue_dequeue(followingqueue)
	yearnedx=followx-obj_player.image_xscale*64
}
x=lerp(x,yearnedx,0.15)
image_xscale = obj_player.image_xscale