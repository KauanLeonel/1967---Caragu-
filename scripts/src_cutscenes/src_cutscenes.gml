function _end(){
	with(obj_cutscene){
	action++;
	
	if action >= array_length(cutscene){
		instance_destroy();
		}
	}
}

function cutscenes_wait(_segundos){
    if (!variable_instance_exists(id, "timer")) timer = 0; // inicializa só uma vez
	timer++;
	if(timer >= room_speed * _segundos){
		timer = 0; // reseta o timer
		_end();
	}
}
function cutscenes_mover(_id, _x, _y, _relative, _spd) {
    if (obj_cutscene.x_dest == -1) {
        if (!_relative) {
            obj_cutscene.x_dest = _x;
            obj_cutscene.y_dest = _y;
        } else {
            obj_cutscene.x_dest = _id.x + _x;
            obj_cutscene.y_dest = _id.y + _y;
        }
    }

    var _xx = obj_cutscene.x_dest;
    var _yy = obj_cutscene.y_dest;

    with (_id) {
        var _dist = point_distance(x, y, _xx, _yy);

        if (_dist > _spd) {
            var _dir = point_direction(x, y, _xx, _yy);
            x += lengthdir_x(_spd, _dir);
            y += lengthdir_y(_spd, _dir);
        } else {
            x = _xx;
            y = _yy;
            obj_cutscene.x_dest = -1;
            obj_cutscene.y_dest = -1;
            _end(); // só avança quando terminar o movimento
        }
    }
}


function change_sprite(_id, _spr){
	_id.image_index = 0;
	_id.sprite_index = _spr;
	
	_end()
}

function cutscenes_pular(_id, _altura, _tempo) {
    if (!variable_instance_exists(_id, "pulo_timer")) {
        _id.pulo_timer = 0;
        _id.pulo_base_y = _id.y;
        _id.pulo_altura = _altura;
        _id.pulo_tempo = _tempo;
    }

    _id.pulo_timer++;

    // t varia de 0 a 1
    var t = _id.pulo_timer / _id.pulo_tempo;

    // Equação de parabola para subir e descer
    _id.y = _id.pulo_base_y - _id.pulo_altura * 4 * t * (1 - t);

    // Quando terminar o pulinho
    if (_id.pulo_timer >= _id.pulo_tempo) {
        _id.y = _id.pulo_base_y;
        _id.pulo_timer = 0;
        if (instance_exists(obj_cutscene)) with (obj_cutscene) _end();
    }
}

function cutscenes_posicionar_frente(_id, _player, _dist) {
    var dist = point_distance(_id.x, _id.y, _player.x, _player.y + 150);

    if (dist <= _dist) {
        if (instance_exists(obj_cutscene)) with (obj_cutscene) _end();
        return;
    }

    var dir = point_direction(_id.x, _id.y, _player.x, _player.y);
    var vel = 2; // velocidade devagar
    var spd_x = lengthdir_x(vel, dir);
    var spd_y = lengthdir_y(vel, dir);

    // Movimento com colisão
    if (!place_meeting(_id.x + spd_x, _id.y + spd_y, obj_bloco_pai)) {
        _id.x += spd_x;
        _id.y += spd_y;
    }
}
function cutscenes_alterar_var(_id, _var, _estado) {
    // Se for global
    if (string_pos("global.", _var)) {
        variable_global_set("controle", _estado);
    }
    else if (instance_exists(_id)) {
        variable_instance_set(_id, _var, _estado);
    }
    _end();
}
function cutscene_dialogo() {
    // Se o diálogo ainda não começou
    if (!variable_global_exists("dialogo_iniciado") || !global.dialogo_iniciado) {
        var _npc = instance_nearest(x, y, obj_par_npc);

        if (_npc != noone) {
            var _dialogo = instance_create_layer(x, y, "Instances", obj_dialogo);
            _dialogo.npc_nome = _npc.nome;
            global.dialogo = true;
            global.dialogo_iniciado = true; // 🔹 marca que o diálogo foi criado
        }
    }

    // Espera o diálogo acabar
    if (!global.dialogo) {
        global.dialogo_iniciado = false; // 🔹 reseta pra futuras cutscenes
        _end(); // continua a cutscene
    }
}
