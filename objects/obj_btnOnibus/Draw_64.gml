if (escolha == true) {
    // draw_set_font(ft_menu); // Ative se precisar da fonte

    var dist = 55;
    var gui_largura = display_get_gui_width();
    var gui_altura = display_get_gui_height();

    var x_centro = gui_largura / 2;
    var y_centro = gui_altura / 2;

    // Cálculo da altura total das opções
    var total_altura = dist * op_max;

    // Tamanho da caixa ao redor do texto
    var padding_x = 100;
    var padding_y = 20;

    var x1 = x_centro - padding_x;
    var x2 = x_centro + padding_x;
    var y1 = y_centro - (total_altura / 2) - padding_y;
    var y2 = y_centro + (total_altura / 2) + padding_y;

    // Desenha o retângulo de fundo
    draw_set_color(c_black);
    draw_rectangle(x1, y1, x2, y2, false);

    // Desenha as opções
    for (var i = 0; i < op_max; i++) {
        draw_set_halign(fa_center);
        draw_set_valign(fa_center);

        if (index == i) {
            draw_set_color(c_yellow);
        } else {
            draw_set_color(c_white);
        }

        draw_text(x_centro, y_centro + (dist * (i - op_max / 2) + dist / 2), opcoes[i]);
    }

    // draw_set_font(-1); // Restaura se você estiver mudando fonte
}
