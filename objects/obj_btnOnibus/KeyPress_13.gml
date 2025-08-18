escolha = false;
global.controle = true;
obj_player.x = 125;
obj_player.y = 639;
switch(index){
	case 0:
	room_goto(Room_floresta);
	break;
	case 1:
	room_goto(Room_vendinha);
	break;
	case 2:
	room_goto(Room_centro);
	break;
	case 3:
	room_goto(Room_BoraBora);
	break;
	case 4:
	obj_player.x = 2300;
	obj_player.y = 860;
	room_goto(Room_rua);
	break;
	case 5:
	obj_player.x = 2300;
	obj_player.y = 860;
	escolha = false;
	global.controle = true;
	break;
}