if life > 0{
	//arrumando teclas de movimento
	var up = keyboard_check(ord("W"));
	var down = keyboard_check(ord("S"));

	//movimento esquerda e direita
	vspd = (down - up) * spd;

	if place_meeting(x, y + vspd, obj_bloco_pai)
	{
		while !place_meeting(x, y + sign(vspd), obj_bloco_pai)
		{
			y += sign(vspd);
		}

		vspd = 0;
	}

	y += vspd;
	
	//tirando a vida
	if place_meeting(x, y, obj_obstaculos) && ivul == 0{
		life -= 1;
		ivul = 30;
	}
	
	if ivul > 0{
		ivul--;
	}
}else{
	image_index = 1;
	x = lerp(x, 500, 0.05);
}

show_debug_message(ivul);
show_debug_message(life);
contador++;
obj_player.visible = false
if (contador == 30 * 100){
obj_player.visible = true
room_goto(Room_menu)}