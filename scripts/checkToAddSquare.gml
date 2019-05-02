var squareCount = 1
var curSquare
tempBoard = ds_grid_create(size,size)
for(var i = 0; i < size; i++){
    for(var j = 0; j < size; j++){
        curSquare = ds_grid_get(board,i,j)
        if (curSquare == noone){
            ds_grid_set(tempBoard,i,j,squareCount)
            squareCount = squareCount + 1
        }
    }
}
