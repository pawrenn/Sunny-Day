//Moving Right
var grid = argument0
//i is x position, j is y position
for(var i = 2; i > -1; i--){
    for(var j = 0; j < size; j++)
    {
        obj=ds_grid_get(grid,i,j)
        if(obj != noone){
            if(obj.color == 7){
                combine[j] = false
            }
        }
        if(obj!=noone and obj.color  != 7){
            for(var k = i; k < 3; k++){
                if(obj.destroy!=true and obj.newColor != true){
                    var result = moveSquareRight(grid,k,j)
                    if(!result){
                        break
                    }
                    else{
                        moving = true
                    }
                }
            }
            obj.newColor = false
        }
    }
}
for(var i = 0; i < 4; i++){
    combine[i] = false
}
