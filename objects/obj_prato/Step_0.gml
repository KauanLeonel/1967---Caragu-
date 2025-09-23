if (instance_exists(obj_player)) {
    // Distância do item até o player
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

ini_open("Dados.sav")
	pode = ini_read_string("Missoes", "Nome_mae", "");
ini_close();

if(pode == "Mãe2"){
    // Se o player estiver perto (ex: 32 pixels)
    if (dist < 64) {
        // Verifica se a tecla E foi pressionada
        if (keyboard_check_pressed(ord("E"))) {
            // Dá a recompensa ao player
			nome = "PratoVazio"
			image_index = 1;
            // Destroi o item depois de coletado
			global.prato = 1;
        } 
    }
}
}

if(global.prato == 0)
image_index = 0;
else{
image_index = 1
nome = "PratoVazio"
}