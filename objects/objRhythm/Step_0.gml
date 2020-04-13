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

delay--;