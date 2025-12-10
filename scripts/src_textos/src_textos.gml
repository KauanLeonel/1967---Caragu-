function src_textos(){
	switch (npc_nome){
	case "Teste":
		ds_grid_add_text("Primeiro Texto", spr_retrato, 0, "Nome");
		ds_grid_add_text("Segundo texto", spr_retrato, 0, "Nome");
		break;
	case "Mãe":
		ds_grid_add_text("Bom dia filho, está tudo bem?", spr_retrato_mae, 1, "Mãe");
		ds_grid_add_text("Está sim mãe, só tive um sonho ruim?", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Não se preocupe meu filho, independente do que for mamãe está aqui para cuidar do meu Betinho", spr_retrato_mae, 1, "Mãe");
		ds_grid_add_text("Agora come logo que a Maria já já está aí para vocês irem para a escola.", spr_retrato_mae, 1, "Mãe");
		//fazer a verificação para saber se ele já fez a primeira missão
		array_delete(global.missoes, 0, 1)
		array_push(global.missoes, ["Tome café da manhã"])
		ini_open("Dados.sav")
			ini_write_string ("Missoes", "Nome_mae", "Mãe2");
		ini_close();
		break;
	case "mae0":
			ds_grid_add_text("...", spr_retrato_mae, 1, "Mãe");
	break;
	case "Felipe":
			ds_grid_add_text("Muito obrigado Roberto, de verdade", spr_retratoFelipe , 1, "Felipe");
			ds_grid_add_text("Ao seu dispor :D", spr_retrato, 1, "Roberto");
			ds_grid_add_text("Você vai na festa hoje no BoraBora???", spr_retrato, 1, "Roberto");
			ds_grid_add_text("Nem estava sabendo disso... Com certeza eu vou", spr_retratoFelipe, 1, "Felipe");
			ds_grid_add_text("Então eu te vejo lá kkkkk", spr_retrato, 1, "Roberto");		
			ds_grid_add_text("Antes que eu me esqueça, você sabe onde está o Kako??", spr_retrato, 1, "Roberto");
			ds_grid_add_text("Está no rio do Santo Antônio pescando, é só seguir o caminho da floresta", spr_retratoFelipe, 1, "Felipe");
			ds_grid_add_text("Valeuu", spr_retrato, 1, "Roberto");
			array_delete(global.missoes, 0, 1)
		array_push(global.missoes, ["Encontre Kako"])
			room_goto(Room_floresta_Kako)
	break;
	case "Prato":
		ds_grid_add_text("Um prato de tapioca com banana", spr_retrato, 0, "Roberto");
		ini_open("Dados.sav")
		pode = ini_read_string("Missoes", "Nome_mae", "");
		ini_close();
		if(pode == "Mãe2"){
				array_delete(global.missoes, 0, 1)
				array_push(global.missoes, ["Encontre Ana!"])
		}
		s = instance_create_layer(928.028, 576, "Instances", obj_transicao)
		s.personagemx= 168;
		s.personagemy = 165;
		s.sala = Room_floresta;


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
	
	case "ana":
	array_delete(global.missoes, 0, 1)
		array_push(global.missoes, ["Vá para a escola"])
		ds_grid_add_text("ROBERTO!!!", spr_retratoAna, 1, "Ana");
		ds_grid_add_text("Isso são horas de se acordar??? Vamos nos atrasar para a escola", spr_retratoAna, 1, "Ana");
		ds_grid_add_text("Está cedo ainda...", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Larga de moleza bobão, vamos. Você vai na frente desta vez", spr_retratoAna, 1, "Ana");
	break;
	
		case "flor":
		var esc = instance_create_layer(x, y, "Instances", obj_escolha)
		esc.escolha = ["Entregar", "Não entregar"]
	
	break;
	case "Não entregar":
			ds_grid_add_text("Esquece...", spr_retrato, 0, "Roberto");

		break;
		case "Entregar":
			ds_grid_add_text("Essa é para você… boboca.", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Obrigada…", spr_retratoAna, 1, "Ana");
		break;
	
		case "ana2":
		
		ds_grid_add_text("Vamos logo Roberto.", spr_retrato, 0, "Roberto");
	break;
	
	case "onça":
		
		ds_grid_add_text("EITA", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Aii Beto, vai lá ver o que é. Vai que é uma onça.…", spr_retratoAna, 1, "Ana");
		ds_grid_add_text("Oxi, e você quer que eu veja", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Aí vai dar tempo de eu fugir", spr_retratoAna, 1, "Ana");
		
	break;
	case "onça2":
		

		ds_grid_add_text("Viu, seu medroso?? Não é nada, falta testosterona nas suas bolas.", spr_retratoAna, 1, "Ana");
		ds_grid_add_text("Haha, engraçadinha.", spr_retrato, 0, "Roberto");
		instance_destroy(obj_onca)
		
	break;
	case "mochila":
		ds_grid_add_text("A mochila que meu avô meu deu antes de morrer...", spr_retrato, 0, "Roberto");
	break;
	case "bola":
		ds_grid_add_text("Nunca se sabe quando vai ter uma pelada", spr_retrato, 0, "Roberto");
	break;
	case "materiais":
		ds_grid_add_text("Coisas para estudar", spr_retrato, 0, "Roberto");
	break;
	case "ana3":
		ds_grid_add_text("Chegamos à escola!!!", spr_retratoAna, 1, "Ana");
		draw_sprite(spr_felipe, 0, x + 100, y + 100);
		ds_grid_add_text("FELIPE...", spr_retrato, 0, "Roberto");
	
	break;
	case "ana4":
	array_delete(global.missoes, 0, 1)
		array_push(global.missoes, ["Leve Felipe para casa"])
		ds_grid_add_text("Felipe...Tá tudo bem???", spr_retratoAna, 1, "Ana");
		ds_grid_add_text("Não muito, acabei me machucando no jogo de futebol agora e eu preciso ir para casa, mas eu estou de bicicleta", spr_retratoFelipe, 1, "Felipe");
		ds_grid_add_text("Nossa, que merda", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Já sei, eu te levo para casa", spr_retrato, 0, "Roberto");
		ds_grid_add_text("Não vai ser um problema mano??", spr_retratoFelipe,1, "Felipe");
		ds_grid_add_text("Não, tá tudo bem, fica em paz", spr_retrato, 0, "Roberto");
		
		
	break;
	
	default:
		ds_grid_add_text("...", spr_retrato, 0, "Roberto");
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


