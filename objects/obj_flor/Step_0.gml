    // Distância do item até o player
    var dist = point_distance(x, y, obj_player.x, obj_player.y);

    // Se o player estiver perto (ex: 32 pixels)
    if (dist < 64) {
        // Verifica se a tecla E foi pressionada
        if (keyboard_check_pressed(ord("E"))) {
            var flor = instance_create_layer(x,y, "Instances", obj_dialogo)
			flor.npc_nome = nome;
            instance_destroy();
        }
    
}