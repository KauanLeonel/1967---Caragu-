// Verifica se o player está perto
if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) < 400) {
        player_near = true;
        visible = true;
		if(keyboard_check(ord("E"))){
			escolha = true;
			global.controle = false;
		}
		
    } else {
        player_near = false;
        visible = false;
    }
}