draw_self(); // Desenha o container uma vez só

// --- CÁLCULO DE POSIÇÃO AUTOMÁTICO ---
// Isso descobre onde é o topo e a esquerda do sprite visualmente
var _topo_real = y - sprite_yoffset;
var _esquerda_real = x - sprite_xoffset;

// Define a largura (x1 e x2) baseada na esquerda real do sprite
var x1 = _esquerda_real + margem_borda;
var x2 = _esquerda_real + sprite_width - margem_borda;

// --- 1. DESENHA O ALVO (PEIXE - AZUL) ---
draw_set_color(cor_alvo);
// Note que somamos _topo_real + alvo_y
draw_rectangle(x1 + 0.5, _topo_real + alvo_y, x2 - 1, _topo_real + alvo_y + alvo_altura, false);

// --- 2. DESENHA O JOGADOR (BARRA - VERDE) ---
var colisao = (pos_y < alvo_y + alvo_altura) && (pos_y + altura_cursor > alvo_y);

if (colisao) {
    draw_set_color(c_lime); // Verde Limão (Acertando)
} else {
    draw_set_color(c_green); // Verde Escuro (Errando)
}

// Desenha o jogador ajustado ao topo real
draw_rectangle(x1 + 0.5, _topo_real + pos_y, x2 - 1, _topo_real + pos_y + altura_cursor, false);

// --- BARRA DE PROGRESSO (LATERAL) ---
draw_set_color(c_yellow);
var altura_ponto = (ponto / ponto_max) * sprite_height;

// Desenha a barra amarela ao lado direito do sprite
var x_barra = _esquerda_real + sprite_width + 2;
var y_base_barra = _topo_real + sprite_height;

draw_rectangle(x_barra, y_base_barra, x_barra + 4, y_base_barra - altura_ponto, false);

// Reseta a cor para não bugar outros sprites do jogo
draw_set_color(c_white);

//desenhando sobreposição
draw_sprite_ext(spr_barra_pesca_ph, 1, x, y, 2, 2, 0, c_white, 1);