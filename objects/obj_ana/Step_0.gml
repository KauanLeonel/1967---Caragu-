var ativar_x = 890;
var ativar_y = 866;
if (!global.cutscene_ativa && point_distance(obj_player.x, obj_player.y, ativar_x, ativar_y) < 100) {
    global.cutscene_ativa = true;
    global.controle = false; // Desliga o controle do jogador
}

if (global.cutscene_ativa) {
    var destino_x = obj_player.x;
    //var destino_y = obj_player.y;

    var dist =abs(x - destino_x);

    if (dist > 100) {
        var dir = sign(destino_x - x);
        var spd = 4; // Velocidade da Ana

        x += dir * spd;
    } else {
        // Quando chegar perto o bastante do player
        global.cutscene_ativa = false;
        global.controle = true; // Devolve o controle
        // Aqui você pode continuar a cena, exibir diálogo etc
		instance_destroy();
    }
}