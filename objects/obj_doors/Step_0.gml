if (instance_exists(obj_player)) {
    if (point_distance(x, y, obj_player.x, obj_player.y) < 200) {
		image_index = 1;

    } else {
        image_index = 0;
    }
}