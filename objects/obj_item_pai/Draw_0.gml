// Desenhar a sprite do item
draw_self();
var distancia = 64;

var dist = (distance_to_object(obj_player) < distancia)

// Se o player estiver próximo, desenha o botão acima
if (dist) {
    var xx = x + 16;          // posição do item
    var yy = y - sprite_height/2 - 16; // um pouco acima
    draw_sprite(spr_btn, 0, xx, yy);
}