var _xx = display_get_gui_width() - 600;
var _yy = (display_get_gui_height() / 3) + 100;
draw_sprite_ext(spr_botao_solto_1_, 0, _xx, _yy + 20, 4, 6, 0, c_white, 1);

var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var spr_w = sprite_get_width(spr_botao_solto_1_);
var spr_h = sprite_get_height(spr_botao_solto_1_);

var bx1 = _xx - spr_w / 2;
var by1 = (_yy + 140) - spr_h / 2;
var bx2 = _xx + spr_w / 2;
var by2 = (_yy + 240) + spr_h / 2;

// Informação base dos botões
var sprw = sprite_get_width(spr_btn1) * 0.5;
var sprh = sprite_get_height(spr_btn1) * 0.5;
//SAIR
draw_sprite_ext(spr_botao_solto_1_, 0, _xx,_yy + 240, 1, 1, 0, c_white, 1);
draw_text( _xx - 20,_yy +250, "SAIR")
 
if (point_in_rectangle(mx, my, bx1, by1, bx2, by2)) {
	if (mouse_check_button_pressed(mb_left)){
		instance_create_layer(x,y, "Instances", obj_btn1);
		instance_destroy()
	}
 }
 
draw_set_color(c_gray);
draw_rectangle(
    x_barra - barra_largura / 2,
    y_barra - 4,
    x_barra + barra_largura / 2,
    y_barra + 4,
    false
);

// Preenchimento
draw_set_color(c_white);
draw_rectangle(
    x_barra - barra_largura / 2,
    y_barra - 4,
    x_barra - barra_largura / 2 + barra_largura * valor,
    y_barra + 4,
    false
);

// Cursor
var cx = x_barra - barra_largura / 2 + barra_largura * valor;
draw_circle(cx, y_barra, 8, false);

// Texto centralizado
draw_set_halign(fa_center);
draw_text(x_barra, y_barra + 20, "Volume: " + string(floor(valor * 100)) + "%");
draw_set_halign(fa_left);

//IDIOMA
if (global.idioma == 0){
draw_sprite_ext(spr_botao_solto_1_, 0, _xx,_yy + 60, 1, 1, 0, c_white, 1);
    draw_text(_xx - 50, _yy + 65, "IDIOMA: PT-BR");
}
else
    draw_text(_xx - 80, _yy + 310, "LANGUAGE: EN");

// ================= BOTÃO MUTE =================
draw_sprite_ext(spr_botao_solto_1_, 0, _xx,_yy -20, 1, 1, 0, c_white, 1);

if (audio_master_gain == 0){

    draw_text(_xx - 50, _yy + 45, "ÁUDIO: OFF");
}
else
    draw_text(_xx - 40, _yy - 15, "ÁUDIO: ON");