/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(font_sml1);
if(xpos == 1 && ypos == 1){
	show_debug_message(global.score_tracker);
	draw_text_color(x+sprite_width/2-15,y+sprite_height/2-7, string(global.score_tracker),c_white,c_teal,c_blue,c_fuchsia, 1);	
}

