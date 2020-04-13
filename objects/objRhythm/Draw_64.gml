/// @description Insert description here
// You can write your code in this editor

//bar left
draw_sprite_ext(sprite2, image_index, lbar_pos, y, 1, 1, 0, c_white, 1);

if(lbar_pos >= room_width/2){
	lbar_pos = x-150;	
}

lbar_pos += bpm/25;

//bar right
draw_sprite_ext(sprite2, image_index, rbar_pos, y, -1, 1, 0, c_white, 1);

if(rbar_pos <= room_width/2){
	rbar_pos = x + 150;	
}

rbar_pos -= bpm/25; //((room_width/2)-150)/(room_speed/(bpm/60)); couldnt figure out bpm calculation

draw_sprite_ext(sprite1, sprite1, x, y, beat, beat, 0, c_white, 1);