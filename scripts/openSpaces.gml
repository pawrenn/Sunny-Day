var curObj = noone
var counter = 0

for(var i=0; i < size; i++){
    for(var j=0; j < size; j++){
        curObj = ds_grid_get(board,i,j)
        if (curObj == noone) {
            counter++
        }
    }
}

return counter
