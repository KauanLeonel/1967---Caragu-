//Define as teclas para movimentação, retornando uma função de 0 ou 1, pressionado ou não
var direita = keyboard_check(ord("D"))
var esquerda = keyboard_check(ord("A"))
var cima = keyboard_check(ord("W"))
var baixo = keyboard_check(ord("S"))


// Com base nas funções acima, define para qual direção vai vezes a velocidade	
velh = (direita - esquerda) * velocidade;
velv = (baixo - cima) * velocidade;
	
	
//COLISÃO HORIZONTAL, verifica se está colidindo com algum bloco, se sim, não move	
repeat(abs(velh)){ //Faz pixel por pixel, então o repeat serve para fazer até terminar a veocidade
	if(!place_meeting(x + sign(velh), y, obj_bloco_pai)){
		x += sign(velh)
	} else{
		velh = 0;
	}
}


//COLISÃO VERTICAL, verifica se está colidindo com algum bloco, se sim, não move	
repeat(abs(velv)){
	if(!place_meeting(x, y  + sign(velv), obj_bloco_pai)){
		y += sign(velv)
	} else{
		velv = 0;	
	}
}

