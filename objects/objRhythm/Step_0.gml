/// @description Insert description here
// You can write your code in this editor

//rhythm tracker
if(delay <= 0 + frames_valid && delay >= 0 - frames_valid){
	global.beat_valid = true;
	beat = 1.4;
}
else if(delay<0-frames_valid){
	delay = room_speed/(bpm/60);
	global.beat_valid = false;	
	beat = 1;
}

if(delay == 0){
	var atker = ds_list_find_value(global.atk_list, irandom_range(0,ds_list_size(global.atk_list)-1));
	atker.atkclear = true;
	global.onbeat = true;
	audio_play_sound(wall, 10, 0);
}
else{
	global.onbeat = false;	
}

delay--;