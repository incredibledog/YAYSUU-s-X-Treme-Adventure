/// @description Call HUD script
if hide=false && !(room=room_chillfields_boss) {
	draw_set_halign(fa_left)
	draw_set_font(global.font)
	draw_sprite(spr_scoreicon,0,32,32)
	draw_text(64,32,global.score+global.scoreadd)
	draw_sprite(spr_stopwatch,0,32,64)
	timerstring = string_replace_all(((string_format(minutes, 2, 0)) + ":" + (string_format(seconds, 2, 0))), " ", "0")
    draw_text(64, 64, timerstring)
	draw_sprite(spr_yaysuucoinicon,0,32,96)
	draw_text(64,96,global.coins)
	health_system_hearts(spr_pizza);
}
if hide=false && (room=room_chillfields_boss) {
	health_system_hearts(spr_pizza);
	boss_health_hearts(spr_fringleglasses);
}