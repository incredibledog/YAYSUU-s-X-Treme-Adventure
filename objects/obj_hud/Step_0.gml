/// @description Insert description here
// You can write your code in this editor
timebonus=clamp(timebonus,0,3000)
if instance_exists(obj_goalflag)
{
	if obj_goalflag.winning=true
	{
		hide=true
	}
}
if hide=false
{
	if timer=room_speed
	{
		seconds+=1
		timebonus-=10
		timer=0
	}
	else {
	timer+=1
	}
	if seconds=60
	{
		minutes+=1
		seconds=0
	}
}

