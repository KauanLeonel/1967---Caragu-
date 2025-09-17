if (!inicializador) {
    src_textos(); // Corrigido o nome da função
    inicializador = true;
	global.controle = false;
}


if keyboard_check_pressed(vk_space){
	if pagina < ds_grid_height(texto_grid) - 1{
		pagina++;
} else{
instance_destroy();
global.dialogo = false;
global.controle = true;

}
}


