if (!inicializador) {
    scr_textos(); // Corrigido o nome da função
    inicializador = true;
}


if keyboard_check_pressed(ord("E")){
	if pagina < ds_grid_height(texto_grid) - 1{
		pagina++;
} else{
global.dialogo = false;
instance_destroy();
}
}
