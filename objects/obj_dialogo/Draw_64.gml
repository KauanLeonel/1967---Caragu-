var guil = display_get_gui_width();
var guia = display_get_gui_height();

var _xx = 0;
var _yy = _guia - 20;
var _c = c_black;
var_sprite = texto_grid[# Infos.Retrato, pagina];
draw_set_font(ftn_dialogo);


//Desenhar lado esquerdo
if texto_grid[# Infos.Lado, pagina] ==0{

draw_rectangle_color(_xx, _yy, guil, guia, _c, _c, _c, _c, false);
draw_text(_xx + 16, _yy -32, texto_grid[# Infos.Nome, pagina]);
draw_text_ext(_xx + 32, _yy + 32,, texto_grid[# Infos.Texto, pagina], _guil - 64);
	
	draw_sprite_ext(_sprite, 0, 100, guia, 3, 3, 0, c_white, 1);
	//MUDAR A POSIÇÃO NO SPRITE PARA CENTRO INFERIOR
} else {
draw_rectangle_color(_xx, _yy, guil, guia, _c, _c, _c, _c, false);
draw_text(_xx + 16, _yy -32, texto_grid[# Infos.Nome, pagina]);
draw_text_ext(_xx + 32, _yy + 32,, texto_grid[# Infos.Texto, pagina], _guil - 64);

	
	draw_sprite_ext(_sprite, 0, guil - 100, guia, -3, 3, 0, c_white, 1);

}

