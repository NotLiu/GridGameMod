/// @description Insert description here
// You can write your code in this editor

if(room==0){
	//start button
	global.button = instance_create_layer(room_width/2,room_height/1.8, "Instances", objButton);
	global.button.gotoroom = 1;
	global.button.text = "START";
	
	//settings button
	//global.button = instance_create_layer(room_width/2,room_height/1.5, "Instances", objButton);
	//global.button.gotoroom = 1;
	//global.button.text = "SETTINGS";
	
	//title text
	global.titletext = instance_create_layer(room_width/2, room_height/3, "Instances", objTitleText);
	global.titletext.text = "HOP THE GRID"
}