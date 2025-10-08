if(global.controle == true){

//Define as teclas para movimentação, retornando uma função de 0 ou 1, pressionado ou não
var direita = keyboard_check(ord("D"))
var esquerda = keyboard_check(ord("A"))
var cima = keyboard_check(ord("W"))
var baixo = keyboard_check(ord("S"))


// Com base nas funções acima, define para qual direção vai vezes a velocidade	
velh = (direita - esquerda) * velocidade;
velv = (baixo - cima) * velocidade;
	
	
//COLISÃO HORIZONTAL, verifica se está colidindo com algum bloco, se sim, não move	
repeat(abs(velh)){ //Faz pixel por pixel, então o repeat serve para fazer até terminar a veocidade
	if(!place_meeting(x + sign(velh), y, obj_bloco_pai)){
		x += sign(velh)
	} else{
		velh = 0;
	}
}


//COLISÃO VERTICAL, verifica se está colidindo com algum bloco, se sim, não move	
repeat(abs(velv)){
	if(!place_meeting(x, y  + sign(velv), obj_bloco_pai)){
		y += sign(velv)
	} else{
		velv = 0;	
	}
}

#region Troca de Sprites
var moving = (velh != 0 || velv != 0);
ang = point_direction(0, 0, velh, velv);
ang = (ang + 360) mod 360;
	
if (moving) {
  

    // salva a última direção só quando há movimento
    last_dir = ang;

}
else {
    // parado: usa a última direção
    ang = last_dir;

    
}

// ----- Escolher sprite baseado em ang (ou last_dir) -----
if (ang >= 45 && ang < 135) {
    sprite_index = moving ? spr_roberto_tras : spr_roberto_tras;
}
else if (ang >= 135 && ang < 225) {
    sprite_index = moving ? spr_roberto_andando_esquerda : spr_roberto_esquerdo;
}
else if (ang >= 225 && ang < 315) {
    sprite_index = moving ? spr_roberto_andando_frente : spr_roberto_frente;
}
else if (ang >= 315 || ang < 45) {
    sprite_index = moving ? spr_roberto_andando_direita : spr_roberto_direito;
}


#endregion

} else {
	sprite_index = spr_roberto_frente
}
#region Diálogo
if distance_to_object(obj_par_npc) <= 10{
	if keyboard_check_pressed(ord("E")) and global.dialogo == false{
		var _npc = instance_nearest(x, y, obj_par_npc);
		var _dialogo = instance_create_layer(x, y, "Instances", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
}
}
#endregion
