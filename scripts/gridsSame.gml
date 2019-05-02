var grid1 = argument0
var grid2 = argument1
var same = true
for(var i = 0; i < size; i++){
    for(var j = 0; j < size; j++){
        if(ds_grid_get(grid1,i,j) != ds_grid_get(grid2,i,j)){
            same = false
        }
    }
}
return same
