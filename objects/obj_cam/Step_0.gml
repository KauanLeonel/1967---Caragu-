if (!instance_exists(target)) exit; //Se o player não existe, sai

// Pega a posição do target
var tx = target.x;
var ty = target.y;

// Centraliza a câmera no target
cam_x = tx - width / 2;
cam_y = ty - height / 2;

// Limita dentro da sala
cam_x = clamp(cam_x, 0, room_width - width);
cam_y = clamp(cam_y, 0, room_height - height);

// Aplica na câmera
camera_set_view_pos(view_camera[0], cam_x, cam_y);