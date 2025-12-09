var yy = 8;     // distância do topo
var xx = 16;    // margem esquerda


if(array_length(global.missoes) != 0 && global.controle == true){
// desenha uma barra de fundo (opcional)
draw_set_alpha(0.6);
draw_set_color(c_black);
draw_rectangle(0, 0, display_get_gui_width(), 32, false);
draw_set_alpha(1);

// desenha o texto
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(array_length(global.missoes) != 0){
switch (array_length(global.missoes[0])){
	case 1:
		draw_text(xx, yy,
    string(global.missoes[0][0]));
		break;
	case 3: 
		draw_text(xx, yy - 6, global.missoes[0][0] + " " + string(global.missoes[0][1]) + "/" + string(global.missoes[0][2]));
		
}
}}