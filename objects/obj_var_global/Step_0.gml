if(global.cutscene1 == false) {
	global.cutscene1 = true
	var _dialogo = instance_create_layer(x, y, "Instances", obj_dialogo);
_dialogo.npc_nome = "Sonho"
}

if(array_length(global.missoes) !=0){
	if(array_length(global.missoes[0]) == 3 && global.missoes[0][0] == "Coletar materiais escolares" && global.missoes[0][1] == global.missoes[0][2]){
		array_delete(global.missoes, 0, 1)
		var _dialogo = instance_create_layer(x, y, "Instances", obj_dialogo);
_dialogo.npc_nome = "Falar com a mãe"
ini_open("Dados.sav")
	ini_write_real ("Missoes", "Missao1", 1);
	ini_write_string ("Missoes", "Nome_mae", "Mãe");
ini_close();

		array_push(global.missoes, ["Falar com a mãe"]);
	}
}