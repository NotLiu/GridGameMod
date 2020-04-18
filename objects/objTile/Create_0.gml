/// @description Insert description here
// You can write your code in this editor
atk_tile = false;
image_speed = 0;
player = false;
prize = false;
atk = false;
receive = false;

movex = 0;
movey = 0;
atk_movex = 0;
atk_movey = 0;

xpos = 0;
ypos = 0;

atkclear = false;

global.state_neutral = 0;
global.state_check = 0; //check if player on tile, check if atk on tile, check if reward
global.state_pass = 1;
global.state_end = 2;

global.state = global.state_check;
