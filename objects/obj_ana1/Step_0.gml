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
if(dist < 100 ){
	if (dir >= 45 && dir < 135) {
    sprite_index = spr_maria_costas;
}
else if (dir >= 135 && dir < 225) {
    sprite_index = spr_maria_esquerda
}
else if (dir >= 225 && dir < 315) {
    sprite_index =spr_maria
}
else if (dir >= 315 || dir < 45) {
    sprite_index = spr_maria_direita

}
}else{
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
	
if (dir >= 45 && dir < 135) {
    sprite_index = spr_maria_andando_costas;
}
else if (dir >= 135 && dir < 225) {
    sprite_index = spr_maria_andando_esquerdaa
}
else if (dir >= 225 && dir < 315) {
    sprite_index =spr_maria_andando_frente
}
else if (dir >= 315 || dir < 45) {
    sprite_index = spr_maria_andando_direita
} else{
sprite_index = spr_maria
}}

}