cutscene_ativa = false
nome = "onça"
 cutscene = [
	[cutscenes_alterar_var, obj_player, "global.controle", false], 
    [cutscene_dialogo],                    
	[cutscenes_wait, 2],  
    [change_sprite, obj_capivara, spr_capiAndando76], 
    [cutscenes_mover, obj_capivara, -920, 0, 1, 10],      
	[cutscenes_alterar_var, obj_onca, "nome", "onça2"],
	[cutscenes_alterar_var, obj_player, "global.controle", true] 
];
action = 0;