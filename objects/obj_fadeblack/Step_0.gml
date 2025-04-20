/// @description Insert description here
// You can write your code in this editor
image_alpha=clamp(image_alpha,0,1)

if fading
{
	image_alpha+=0.05
	if image_alpha=1
	{
		room_goto(global.nextroom)
	}

}
else if image_alpha > 0
{
	image_alpha-=0.05
}
