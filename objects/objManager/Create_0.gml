/// @description Insert description here
// You can write your code in this editor
randomize();

num_tiles = 16;
global.prize_tracker = noone;

global.score_tracker = 0;
global.grid[0,0] = 0;

tile_size = 59;
for(i = 0; i<num_tiles; i++){
	for(j=0; j<num_tiles; j++){
		var tile = instance_create_layer((tile_size+5)*j,(tile_size+5)*i,"Tiles",objTile);
		global.grid[j, i] = tile;
		tile.xpos = j;
		tile.ypos = i;
		
		if(j == 0 && (i!=0 && i!=15)){ //left column
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 0;
		}
		else if(j == 0 && i==0){
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 4;
		}
		else if(j == 0 && i==15){
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 5;
		}
		
		if(j == 15 && (i!=0 && i!=15)){ //right column
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 2;
		}
		else if(j == 15 && i==0){
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 7;
		}
		else if(j == 15 && i==15){
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 6;
		}
		
		if(i == 0 && (j!=0 && j!= 15)){ //top row
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 1;
		}
		
		if(i == 15 && (j!=0 && j!= 15)){ //bottom row
			tile.atk_tile = true;
			tile.sprite_index = sprite0;
			tile.image_index = 3;
		}
		
	}
}

//player spawn
global.grid[7,7].player = true;
global.grid[7,7].sprite_index = sprite4;