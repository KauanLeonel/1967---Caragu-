// Se cutscene ainda vai rodar
if (cutscene_ativa && !instance_exists(obj_cutscene)) {
    var cut = instance_create_layer(x, y, "Instances", obj_cutscene);
    cut.cutscene = cutscene;
	
}
if (proximaSala == true){
room_goto(Room_bike)}
// Durante cutscene → não se move
if (!cutscene_ativa || !instance_exists(obj_cutscene)) {

    // Distância e direção até o jogador
    var dist = point_distance(x, y, obj_player.x, obj_player.y);
    var dir = point_direction(x, y, obj_player.x, obj_player.y);

    var vel = 6;

    // Movimento
    var spd_x = lengthdir_x(vel, dir);
    var spd_y = lengthdir_y(vel, dir);

    // Condições de parada
    if (dist <= 32 || place_meeting(x, y, obj_player)) {
        vel = 0;
        exit;
    }

    // Movimento com colisão
    if (!place_meeting(x + spd_x, y, obj_bloco_pai) && !place_meeting(x + spd_x, y, obj_player)) {
        x += spd_x;
    }

    if (!place_meeting(x, y + spd_y, obj_bloco_pai) && !place_meeting(x, y + spd_y, obj_player)) {
        y += spd_y;
    }
}

