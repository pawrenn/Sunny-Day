//Moving Up
var grid = argument0
//i is y position, j is x position
for(var i = 1; i < size; i++){
    for(var j = 0; j < size; j++)
    {
        obj=ds_grid_get(grid,j,i)
        if(obj != noone){
            if(obj.color == 7){
                combine[j] = false
            }
        }
        if(obj!=noone and obj.color  != 7){
            for(var k = i; k > 0; k--){
                if(obj.destroy!=true and obj.newColor != true){
                    var result = moveSquareUp(grid,j,k)
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
