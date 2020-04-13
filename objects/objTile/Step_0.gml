/// @description Insert description here
// You can write your code in this editor

switch (global.state){
	case global.state_check:
		if(atk_tile = false){
			if(player == true && prize == true){
				prize = false;
				global.score_tracker += 1;
				global.prize_tracker = noone;
			}
			if(player == true && atk == true){
				global.state = global.state_end;	
			}
			
			if(player == true){
				sprite_index = sprite4;	
			}
			else{
				sprite_index = sprite3;	
			}
			if(atk == true){
				sprite_index = sprite5;
			}
			else if(player != true){
				sprite_index = sprite3;	
			}
			if(prize == true){
				sprite_index = sprite6;
			}
			else if(player != true){
				sprite_index = sprite3;	
			}
		
			if(keyboard_check_pressed(ord("W"))&&player==true && ypos > 1){
				movey = -1;	
				global.state = global.state_pass;
			}
			if(keyboard_check_pressed(ord("A"))&&player==true && xpos > 1){
				movex = -1;	
				global.state = global.state_pass;
			}
			if(keyboard_check_pressed(ord("S"))&&player==true && ypos < 14){
				movey = 1;	
				global.state = global.state_pass;
			}
			if(keyboard_check_pressed(ord("D"))&&player==true && xpos <14){
				movex = 1;	
				global.state = global.state_pass;
			}
		
			if(global.beat_valid == false){
				global.state = global.state_pass;
			}
			break;
		}
		
	case global.state_pass:
		if((movex != 0 || movey != 0) && player == true){
			player = false;
			var tile = global.grid[xpos+movex, ypos+movey];
			tile.player = true;
			//tile.receive = true;
			
			movex = 0;
			movey = 0;	
		}
		
		
		if(atk == true){
			atk = false;
			var tile = global.grid[xpos+atk_movex, ypos+atk_movey];
			tile.atk = true;
			tile.atk_movex = atk_movex;
			tile.atk_movey = atk_movey;
			tile.receive = true;
			
			atk_movex = 0;
			atk_movey = 0;
		}
		
		if(global.beat_valid || receive == true){ // delay resets - receive to update sprites upon sending messages
			global.state = global.state_check;
		}
		break;
}
