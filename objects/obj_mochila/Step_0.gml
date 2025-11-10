// Verifica se existe o player
if (instance_exists(obj_player)) {
    // Distância do item até o player
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    // Se o player estiver perto (ex: 32 pixels)
    if (dist < 84) {
        // Verifica se a tecla E foi pressionada
        if (keyboard_check_pressed(ord("E"))) {
            // Dá a recompensa ao player
			global.missoes[0][1]++;
			

            // Destroi o item depois de coletado
            instance_destroy();
        }
    }
}

ini_open("Dados.sav")
			progresso = ini_read_real ("Missoes", "Missao1", 0);
ini_close();

if(progresso == 1) instance_destroy();