cutscene_ativa = true;
nome = "ana"
nome2 = false;
 cutscene = [
    [cutscenes_alterar_var, obj_ana, "cutscene_ativa", false], // desativa a flag na Ana
	[cutscenes_alterar_var, obj_player, "global.controle", false], 
    [cutscenes_pular, obj_ana, 20, 20],                       // pulinho
    [cutscenes_posicionar_frente, obj_ana, obj_player, 30],   // andar até frente do player
    [cutscenes_wait, 1],                                      // esperar 10 segundos
	[cutscene_dialogo],
	[cutscenes_alterar_var, obj_player, "global.controle", true],
	[cutscenes_alterar_var, obj_ana, "nome2", true] 
];
action = 0;