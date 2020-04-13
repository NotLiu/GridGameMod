/// @description Insert description here
// You can write your code in this editor
x = room_width/2 //set to mid of screen

bpm = 120;
delay = room_speed/(bpm/60);
orb = noone;
beat = 1;

global.beat_valid = false;

frames_valid = 5; //times 2 for below and above

lbar_pos = x-150;
rbar_pos = x+150;