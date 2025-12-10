var guil = display_get_gui_width();
var guia = display_get_gui_height();
var espacamento = 32;

var _xx = 0;
var _yy = guia - 200;

draw_sprite_ext(spr_botao_solto_1_, 0, _xx, _yy + 20, 15, 4, 0, c_white, 1);

draw_set_color(c_white);
// Nome do personagem

// Desenhar escolhas
for (var i = 0; i < array_length(escolha); i++) {
	draw_set_color(i == index ? c_yellow : c_white);

    draw_text(
        guil/2,
        _yy + 32 + i * espacamento,
        escolha[i]
    );
	  
}