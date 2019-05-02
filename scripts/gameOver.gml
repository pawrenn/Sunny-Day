//Initialize variables - create a temporary copy of our grid
var tempGrid = ds_grid_create(size,size)
var curSquare
var myGameOver = true
//Create the copy of the grid
for(var i = 0; i < size; i++){
    for(var j = 0; j < size; j++){
        curSquare = ds_grid_get(board,i,j)
        ds_grid_set(tempGrid,i,j,curSquare)
    }
}
//If the game is not over yet, check to see if there is a possible move in the temp grid
//If there is a move in that direction, the grids will be different after the move and
//game over will be false
if(myGameOver == true){ moveLeft(tempGrid) }
if(!gridsSame(board,tempGrid)){
    myGameOver = false
}
if(myGameOver == true){ moveRight(tempGrid) }
if(!gridsSame(board,tempGrid)){
    myGameOver = false
}
if(myGameOver == true){ moveUp(tempGrid) }
if(!gridsSame(board,tempGrid)){
    myGameOver = false
}
if(myGameOver == true){ moveDown(tempGrid) }
if(!gridsSame(board,tempGrid)){
    myGameOver = false
}

return myGameOver
