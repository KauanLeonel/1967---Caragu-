#region CONTROLES
key_jump  = keyboard_check(ord("W")); // Pular é W
key_right = keyboard_check(ord("D")); // Direita é D
key_left  = keyboard_check(ord("A")); // Esquerda é A
#endregion

#region Movimentação

if(global.controle == true){
var move = key_right - key_left; // 1 (direita), -1 (esquerda), 0 (parado)
hspd = move * spd; // velocidade horizontal
vspd += grv; // gravidade

if (hspd != 0) image_xscale = sign(hspd);

// COLISÃO HORIZONTAL
if (place_meeting(x + hspd, y, obj_bloco1)) {
    while (!place_meeting(x + sign(hspd), y, obj_bloco1)) {
        x += sign(hspd);
    }
    hspd = 0; // CORRETO: para movimento horizontal
}

x += hspd;

// COLISÃO VERTICAL
if (place_meeting(x, y + vspd, obj_bloco1)) {
    while (!place_meeting(x, y + sign(vspd), obj_bloco1)) {
        y += sign(vspd);
    }
    vspd = 0;
}

y += vspd;

// PULO
if (place_meeting(x, y + 1, obj_bloco1) && key_jump) {
    vspd = -16; // Negativo para subir
}
}
#endregion
