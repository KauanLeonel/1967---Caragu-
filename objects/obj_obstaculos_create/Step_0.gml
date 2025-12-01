if obj_player_bike.life > 0{
	var _y = random_range(64, camera_get_view_height(view_camera[0])-64);
	//timer
	if timer >= 0{
		timer--;
	}

	if timer <= 0{
		instance_create_layer(camera_get_view_width(view_camera[0]), _y, "Instances", obj_obstaculos);
		timer = random_range(60, 120);
	}
}

aumentarVelocidade++;

if(aumentarVelocidade == 120){
aumentarVelocidade = 0;
vel += 10
}