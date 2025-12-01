if obj_player_bike.life < 1{
	vel = lerp(vel, 0, 0.05);
}
x -= vel;

if x <= -10{
	instance_destroy();
}
