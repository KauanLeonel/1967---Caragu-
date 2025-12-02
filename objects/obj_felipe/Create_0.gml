cutscene_ativa = true;
nome = "Felipe"

 cutscene = [
    [cutscenes_alterar_var, obj_felipe, "cutscene_ativa", false], // desativa a flag na Ana
	[cutscenes_alterar_var, obj_player, "global.controle", false], 
    [cutscenes_wait, 1],                                      // esperar 10 segundos
	[cutscene_dialogo],
	[cutscenes_alterar_var, obj_player, "global.controle", true]
];
action = 0;