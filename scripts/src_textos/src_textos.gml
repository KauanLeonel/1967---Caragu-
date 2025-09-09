function src_textos(){
	switch npc_nome{
	case "Teste":
		ds_grid_add_text("Primeiro Texto", spr_retrato, 0, "Nome");
		ds_grid_add_text("Segundo texto", spr_retrato, 0, "Nome");

}


}

function ds_grid_add_row()
{
///arg ds_grid
var grid = argument[0];
ds_grid_resize( grid,ds_grid_width( grid),ds_grid_height( grid)+1);
return(ds_grid_height( grid)-1);
}

function ds_grid_add_text(){

	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);

	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];


}


