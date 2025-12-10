
if(keyboard_check(ord("W"))){
index--;
if (index < 0){
	index = array_length(escolha) -1;
}
}
if(keyboard_check(ord("S"))){
index++;
if (index > array_length(escolha) -1){
	index = 0;
}
}

if(keyboard_check(vk_space)){
var dialogo = instance_create_layer(x,y, "Instances", obj_dialogo)
dialogo.nome = escolha[index]
instance_destroy()
}