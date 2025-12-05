// 1. Aplica o Impulso (Subir)
if (mouse_check_button(mb_left)) {
    vel_y -= impulso;
}

// 2. Aplica a Gravidade (Cair)
vel_y += gravidade;

// Limitador de velocidade (opcional, para não cair/subir rápido demais)
vel_y = clamp(vel_y, -5, 5);

// 3. Move o quadrado
pos_y += vel_y;

// 4. Colisão com o Topo e o Fundo (Não deixa sair da barra)
if (pos_y < topo_limite) {
    pos_y = topo_limite;
    vel_y = 0; // Bateu no teto, para de subir
}

if (pos_y > fundo_limite) {
    pos_y = fundo_limite;
    // Dica de Game Design: No Stardew Valley a barra "quica" no chão.
    // Se quiser o quique, troque a linha de baixo por: vel_y = -vel_y * 0.5;
    vel_y = 0; 
}

// --- LÓGICA DO JOGADOR (VERDE) ---
if (mouse_check_button(mb_left)) {
    vel_y -= impulso;
}
vel_y += gravidade;

// *AJUSTE*: Velocidade máxima reduzida para 2 (antes era 3 ou 5)
vel_y = clamp(vel_y, -2, 2); 

pos_y += vel_y;

// Colisões
if (pos_y < topo_limite) { pos_y = topo_limite; vel_y = 0; }
if (pos_y > fundo_limite) { pos_y = fundo_limite; vel_y = 0; }

// --- LÓGICA DO ALVO (AZUL) ---
timer_movimento++;

if (timer_movimento > 60) {
    alvo_destino = irandom_range(topo_limite, sprite_height - margem_borda - alvo_altura);
    timer_movimento = 0;
    timer_movimento = irandom_range(20, 80); 
}

// Movimento do peixe (mantive suave)
alvo_y = lerp(alvo_y, alvo_destino, 0.03);

// --- PONTUAÇÃO ---
var colisao = (pos_y < alvo_y + alvo_altura) && (pos_y + altura_cursor > alvo_y);

if (colisao) {
    ponto += 0.4; 
} else {
    ponto -= 0.1;
}
ponto = clamp(ponto, 0, ponto_max);