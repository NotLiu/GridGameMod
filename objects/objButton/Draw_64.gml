/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font_sml);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(position_meeting(mouse_x,mouse_y,id)){
	show_debug_message("EEEEEEEEE");
	draw_text_transformed_color(x,y,text,1.2,1.2,0,$5B14EE,$5B14EE,$5B14EE,$5B14EE,1);
}
else{
	draw_text_color(x,y,text,c_white,c_white,c_white,c_white, 1);
}

if(position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)){ //if we're hovering and we click the button
	room_goto(gotoroom); //go to whatever room this button is connected to
}
