function src_textos(){
	switch (npc_nome){
	case "Teste":
		ds_grid_add_text("Primeiro Texto", spr_retrato, 0, "Nome");
		ds_grid_add_text("Segundo texto", spr_retrato, 0, "Nome");
		break;
	case "Mãe":
		ds_grid_add_text("Bom dia filho, está tudo bem?", spr_retrato, 0, "Mãe");
		ds_grid_add_text("Está sim mãe, só tive um sonho ruim?", spr_retrato, 1, "Roberto");
		ds_grid_add_text("Não se preocupe meu filho, independente do que for mamãe está aqui para cuidar do meu Betinho", spr_retrato, 0, "Mãe");
		ds_grid_add_text("Agora come logo que a Maria já já está aí para vocês irem para a escola.", spr_retrato, 0, "Mãe");
		//fazer a verificação para saber se ele já fez a primeira missão
		array_delete(global.missoes, 0, 1)
		array_push(global.missoes, ["Tome café da manhã"])
		ini_open("Dados.sav")
			ini_write_string ("Missoes", "Nome_mae", "Mãe2");
		ini_close();
		break;
	case "mae0":
			ds_grid_add_text("...", spr_retrato, 0, "Mãe");
	break;
	case "Prato":
		ds_grid_add_text("Um prato de tapioca com banana", spr_retrato, 0, "Roberto");
		ini_open("Dados.sav")
		pode = ini_read_string("Missoes", "Nome_mae", "");
		ini_close();

		if(pode == "Mãe2"){
				array_delete(global.missoes, 0, 1)
		}
		break;
	case "PratoVazio":
		ds_grid_add_text("Estava delicioso", spr_retrato, 0, "Roberto");
		ini_open("Dados.sav")
			ini_write_real ("Missoes", "Missao2", 0);
		ini_close();
		break;
	case "Sonho":
		ds_grid_add_text("Que sonho estranho... Parecia que o mundo estava caindo... Me deu até ânsia.", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Deixa eu ver que horas são... CARACA, JÁ SÃO QUASE 7:00 HORAS... PRECISO PEGAR AS MINHAS COISAS E IR PARA A ESCOLA", spr_retrato, 0, "Roberto");
		materiais = 0
		quant_materiais = 3
		array_push(global.missoes, ["Coletar materiais escolares", materiais, quant_materiais]);
		ini_open("Dados.sav")
			ini_write_real ("Missoes", "Missao1", 0);
		ini_close();

		break;
	case "Falar com a mãe":
		ds_grid_add_text("Tudo pronto, vou falar com a minha mãe e já saio", spr_retrato, 0, "Roberto");
	break;
	case "Mãe2":
		ds_grid_add_text("Fiz a tapioca que você gosta", spr_retrato, 0, "Mãe");
	break;
}


}

function ds_grid_add_row()
{
///arg ds_grid
var grid = argument[0];
ds_grid_resize( grid,ds_grid_width( grid),ds_grid_height( grid)+1);
return(ds_grid_height( grid)-1);
}

function ds_grid_add_text(){

	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);

	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];


}


