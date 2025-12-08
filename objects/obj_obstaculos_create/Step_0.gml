if obj_player_bike.life > 0 && obj_player_bike.venceu == false{
	var _y = random_range(64, 2098);
	//timer
	if timer >= 0{
		timer--;
	}

	if timer <= 0{
		instance_create_layer(3850, _y, "Instances", obj_obstaculos);
		timer = random_range(60, 120);
	}
}

aumentarVelocidade++;

if(aumentarVelocidade == 120){
aumentarVelocidade = 0;
vel += 10
}