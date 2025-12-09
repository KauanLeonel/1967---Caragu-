var guil = display_get_gui_width();
var guia = display_get_gui_height();

var _xx = 0;
var _yy = guia - 200;
var _c = c_black;

var _sprite = texto_grid[# Infos.Retrato, pagina];


draw_set_font(ftn_dialogo);
if (ds_grid_height(texto_grid) > 0) {
	// Retrato
if (texto_grid[# Infos.Lado, pagina] == 0) {
    // Lado esquerdo
    draw_sprite_ext(_sprite, 0, 0, -130, 1, 1, 0, c_white, 1);

} else {
    // Lado direito
    draw_sprite_ext(_sprite, 0, 680, -10, 1, 1, 0, c_white, 1);
}
// Fundo do diálogo
draw_sprite_ext(spr_botao_solto_1_, 0, _xx, _yy + 20, 15, 4, 0, c_white, 1);

//draw_rectangle_color(_xx, _yy - 50, guil /6, guia, _c, _c, _c, _c, false);
//draw_rectangle_color(_xx, _yy, guil, guia, _c, _c, _c, _c, false);
draw_set_color(c_white);
// Nome do personagem
draw_text(_xx + 32, _yy - 32, texto_grid[# Infos.Nome, pagina]);

// Texto
draw_text_ext(_xx + 32, _yy + 32, texto_grid[# Infos.Texto, pagina], 32, guil - 64);


}