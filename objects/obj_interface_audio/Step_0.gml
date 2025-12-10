// Área clicável da barra
var barra_x1 = x_barra - barra_largura / 2;
var barra_x2 = x_barra + barra_largura / 2;
var _xx = display_get_gui_width();
var _yy = display_get_gui_height();
draw_sprite_ext(spr_botao_solto_1_, 0, _xx, _yy + 20, 15, 4, 0, c_white, 1);
// Detectar clique
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y,_xx, _yy+20 - 10, barra_x2, y_barra + 10)) {
        arrastando = true;
    }
}

// Soltar mouse
if (!mouse_check_button(mb_left)) {
    arrastando = false;
}

// Atualizar valor enquanto arrasta
if (arrastando) {
    var mx = clamp(mouse_x, barra_x1, barra_x2);
    valor = (mx - barra_x1) / barra_largura;
    //audio_master_gain = valor;
}
