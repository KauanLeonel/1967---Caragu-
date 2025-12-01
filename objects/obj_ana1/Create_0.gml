cutscene_ativa = true;
nome = "ana3"

 cutscene = [
    [cutscenes_alterar_var, obj_ana1, "cutscene_ativa", false], // desativa a flag na Ana
	[cutscenes_alterar_var, obj_player, "global.controle", false], 
    [cutscenes_pular, obj_ana1, 20, 20],                       // pulinho
    [cutscenes_wait, 1],                                      // esperar 10 segundos
	[cutscene_dialogo],
	//[cutscenes_posicionar_frente, obj_player, obj_felipe, 10],
	//[cutscenes_posicionar_frente, obj_ana, obj_player, 30],// andar até frente do player
	[cutscenes_alterar_var, obj_ana1, "nome", "ana4"], 
	[cutscene_dialogo],
	[cutscenes_alterar_var, obj_player, "global.controle", true]
];
action = 0;