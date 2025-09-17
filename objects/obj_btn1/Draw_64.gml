//DEFINIR VARS
var mx = device_mouse_x_to_gui(0); //Pega constamente a posição x do mouse
var my = device_mouse_y_to_gui(0);// Mesama coisa, só que com o y
var sprw = sprite_get_width(spr_btn1); //Pega a largura da sprite
var sprh = sprite_get_height(spr_btn1); //Pega a altura da sprite
x1 = 500 + sprw; //Pega a posição do botão
y1 = 380 + sprh; //Pega a posição y do botão
draw_set_color(c_black);

//DESENHAR A SPRITE
draw_sprite_ext(spr_btn1, 0, x1, y1, bscale1, bscale1, 0, c_white, balpha1); //Botão iniciar
draw_text(670, 432, "INICIAR"); //Texto1
draw_sprite_ext(spr_btn1, 0, x1, y1 + 100, bscale2, bscale2, 0, c_white, balpha2); //Botão créditos
draw_text(670, 532, "CREDITOS"); //Texto1
draw_sprite_ext(spr_btn1, 0, x1, y1 + 200, bscale3, bscale3, 0, c_white, balpha3); //Botão sair
draw_text(680, 632, "SAIR"); //Texto1


//VERIFICAR SE O MOUSE ESTÁ EM CIMA
//BOTÃO 1
if point_in_rectangle(mx, my, x1 - sprw, y1 - sprh, x1 + sprw, y1+ sprh){ //Se o mouse está em cima do botão
	balpha1 = 1; //Faz ele ficar sem transparência
	bscale1 = lerp(bscale1, 1.2, 0.08); //Aumenta a escala
	//O lerp serve para fazer uma transição suave
	
	if mouse_check_button_pressed(mb_left){ //Se a pessoa clicou com o botão direito
		instance_create_layer(0,0, "Instances", obj_fade);
		room_goto(Room_quarto)
		}
} else{
	bscale1 = lerp(bscale1, 1, 0.08);
	balpha1 = 0.6;
}

//BOTÃO 2
if point_in_rectangle(mx, my, x1 - sprw, y1 - sprh + 100, x1 + sprw, y1+ sprh + 100){ //Se o mouse está em cima do botão
	balpha2 = 1; //Faz ele ficar sem transparência
	bscale2 = lerp(bscale2, 1.2, 0.08); //Aumenta a escala
	//O lerp serve para fazer uma transição suave
	
	if mouse_check_button_pressed(mb_left){ //Se a pessoa clicou com o botão direito
		show_question("oi"); //Mostrar um oi
		}
} else{
	bscale2 = lerp(bscale2, 1, 0.08);
	balpha2 = 0.6;
}

//BOTÃO 3
if point_in_rectangle(mx, my, x1 - sprw, y1 - sprh + 200, x1 + sprw, y1+ sprh + 200){ //Se o mouse está em cima do botão
	balpha3 = 1; //Faz ele ficar sem transparência
	bscale3 = lerp(bscale3, 1.2, 0.08); //Aumenta a escala
	//O lerp serve para fazer uma transição suave
	
	if mouse_check_button_pressed(mb_left){ //Se a pessoa clicou com o botão direito
		game_end();
		}
} else{
	bscale3 = lerp(bscale3, 1, 0.08);
	balpha3 = 0.6;
}
