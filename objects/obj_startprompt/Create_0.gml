/// @description Insert description here
// You can write your code in this editor
image_alpha=0
st=120
started=false
delay=0
month = date_get_month(date_current_datetime())
day = date_get_day(date_current_datetime())
year = date_get_year(date_current_datetime())
if global.mobile
{
	sprite_index=spr_pressstart_m
}
else
{
	sprite_index=spr_pressstart
}