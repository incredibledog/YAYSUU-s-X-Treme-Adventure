function preloadactualroom(){
	global.inlevel = (global.nextroom == room_chillfields_1 || global.nextroom == room_chillfields_2 || global.nextroom == room_chillfields_2b || global.nextroom == room_chillfields_2c || global.nextroom == room_chillfields_2d || global.nextroom == room_chillfields_boss || global.nextroom == room_mysticmanor_1 || global.nextroom == room_mysticmanor_1b || global.nextroom == room_mysticmanor_1c || global.nextroom == room_mysticmanor_2 || global.nextroom == room_mysticmanor_2b || global.nextroom == room_mysticmanor_2c || global.nextroom == room_charredforest || global.nextroom == room_chilifields_a || global.nextroom == room_glowstickcity || global.nextroom == room_tutorial || global.nextroom == room_dev || global.nextroom == room_househub || global.nextroom == room_househub_extra || global.nextroom == room_options_test)
	global.inboss = (global.nextroom == room_chillfields_boss)
	global.inhub = (global.nextroom == room_househub || global.nextroom == room_househub_extra || global.nextroom == room_options_test)
	global.jumpscare = false
	global.prevroom = room
	instance_activate_all()
}