/// @description Insert description here
// You can write your code in this editor

if(global.prize_tracker == noone){
	var prizex = irandom_range(1,14);
	var prizey = irandom_range(1,14);
	
	global.prize_tracker = global.grid[prizex,prizey];
	global.prize_tracker.prize = true;
}

if(keyboard_check(ord("3")) && keyboard_check(ord("6"))){
	game_restart();	
}

//show_debug_message(global.score_tracker);