if (cutscene_ativa && !instance_exists(obj_cutscene)) {
    var cut = instance_create_layer(x, y, "Instances", obj_cutscene);
    cut.cutscene = cutscene;
}