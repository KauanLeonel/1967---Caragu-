var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Informação base dos botões
var sprw = sprite_get_width(spr_btn1) * 0.5;
var sprh = sprite_get_height(spr_btn1) * 0.5;




draw_set_font(ftn_menu);
for (var i = 0; i < 4; i++)
{
    var bx = btn_x + 200;
    var by = btn_y + (i * btn_spacing) + 50;

    // Desenhar sprite
    draw_sprite_ext(spr_botao_solto_1_, 0, bx, by, bscale[i], bscale[i], 0, c_white, balpha[i]);

    // Desenhar texto
    var text = texts[i];

// Medir tamanho do texto
var tw = string_width(text);
var th = string_height(text) - 30;

// Centralizar texto baseado na posição do botão (bx, by)
var tx = bx - tw * 0.5;  
var ty = by - th * 0.5;  

draw_text(tx, ty, text);


    // Área do mouse
    var hover = point_in_rectangle(mx, my, bx - sprw, by - sprh, bx + sprw, by + sprh);

    if (hover)
    {
        balpha[i] = 1;
        bscale[i] = lerp(bscale[i], 1.2, 0.08);
		
        if (mouse_check_button_pressed(mb_left))
        {
            switch (i)
            {
                case 0: // INICIAR
					if(jogar== 1)
                    instance_create_layer(0,0,"Fade",obj_fade);
					else jogar = 1;
                break;

                case 1: // CONFIGURAÇÕES
					instance_create_layer(x, y, "Instances", obj_interface_audio)
                    instance_destroy();
                break;

                case 2: // CRÉDITOS
                    // Coloque a ação aqui
                break;

                case 3: // SAIR
				if(jogar == 0)
                    game_end();
				else
					jogar = 0
                break;
            }
        }

    }
    else
    {
        bscale[i] = lerp(bscale[i], 1, 0.08);
        balpha[i] = 0.6;
    }
}
