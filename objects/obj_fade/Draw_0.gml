// Configura a cor de desenho para preto
draw_set_color(c_white);

// Configura a opacidade para o valor atual de alpha
draw_set_alpha(alpha);

// Desenha um retângulo que cobre toda a tela
draw_rectangle(0, 0, display_get_width(), display_get_height(), false);

// Restaura a opacidade padrão para futuros desenhos
draw_set_alpha(1);

// Se estamos no processo de fade out
if (fading_out) {
    // Aumenta a opacidade gradualmente
    alpha += fade_speed;

    // Certifica-se de que alpha não exceda 1 (completamente opaco)
    if (alpha >= 1) {
        alpha = 1;
        fading_out = false;
        
        // Muda para a próxima sala após o fade out completar
        room_goto(room1); // Ou room_goto(ROOM_NAME); para uma sala específica
    }
}
