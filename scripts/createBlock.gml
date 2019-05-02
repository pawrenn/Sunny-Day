//decide where first block should be placed upon startup
var positionX
var positionY
var startX
var startY
var found = false
var tempSquare

//loop through the positions in the grid
if(availableBlocks != 0){
    while(found = false){
        positionX = irandom_range(0,3)
        positionY = irandom_range(0,3)
        tempSquare = ds_grid_get(board,positionX,positionY)
        if (tempSquare == noone){
            found = true
        }
    }
    //find the position to place our new square in
    if positionX = 0{
        startX = 51
    }
    if positionX = 1{
        startX = 124
    }
    if positionX = 2{
        startX = 197
    }
    if positionX = 3{
        startX = 270
    }
    if positionY = 0{
        startY = 177
    }
    if positionY = 1{
        startY = 250
    }
    if positionY = 2{
        startY = 323
    }
    if positionY = 3{
        startY = 396
    }
    
    //create the square but shrink it so that we can make it grow to make new square apparent
    square = instance_create(startX,startY,obj_tile)
    
    with (square) {
        image_xscale = 0.2
        image_yscale = 0.2
        spawning = true
    }
    
    //track the square in the grid and make sure the copy gets the change as well
    ds_grid_set(board,positionX,positionY,square.id)
    ds_grid_copy(oldBoard,board)
}


if (found == true){
    addedBlock = true
    availableBlocks -= 1
}

else{
    addedBlock = false
}


