var grid = argument0
var tx = argument1
var ty = argument2

obj = ds_grid_get(grid,tx,ty)
    
objRight = ds_grid_get(grid,tx+1,ty)

//no square to the right
if(objRight==noone){ 
    ds_grid_set(grid,tx,ty,noone)
    ds_grid_set(grid,tx+1,ty,obj.id)
    obj.moving = true
    obj.distanceLeft = obj.distanceLeft + 1
    obj.myDirection = 1
    return true
}

if(combine[ty] == false){
    //square to the right will make orange
    if(((objRight.color==2)and(obj.color==3)) or ((objRight.color==3)and(obj.color==2))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx+1,ty,obj.id)
        obj.color = 4
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyRight  = obj.distanceLeft
        obj.destroyRightPos = obj.distanceLeft - objRight.distanceLeft
        obj.myDirection = 1
        combine[ty] = true
        return true
    }
    
    //square to the right will make purple
    else if(((objRight.color==1)and(obj.color==2)) or ((objRight.color==2)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx+1,ty,obj.id)
        obj.color = 5
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyRight  = obj.distanceLeft
        obj.destroyRightPos = obj.distanceLeft - objRight.distanceLeft
        obj.myDirection = 1
        combine[ty] = true
        return true
    }
    
    //square to the right will make green
    else if(((objRight.color==1)and(obj.color==3)) or ((objRight.color==3)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx+1,ty,obj.id)
        obj.color = 6
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyRight  = obj.distanceLeft
        obj.destroyRightPos = obj.distanceLeft - objRight.distanceLeft
        obj.myDirection = 1
        combine[ty] = true
        return true
    }
    
    //square to the right is white
    else if(objRight.color == 7 and obj.color != 8){
        if(string_pos(string(obj.color), objRight.stripes) == 0){
            ds_grid_set(grid,tx,ty,noone)
            objRight.stripes = objRight.stripes + string(obj.color)
            obj.distanceLeft = obj.distanceLeft + 1
            obj.moving = true
            obj.myDirection = 1
            obj.turningIntoStripe = true
            obj.stripeID = objRight.id
            obj.destroy = true
            combine[ty] = true
            return true
        }
        else{
            return false
        }
    }
    
    //square to the right is the same color
    else if(objRight.color==obj.color and obj.color != 8){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx+1,ty,noone)
        obj.moving = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.destroyRight  = obj.distanceLeft
        obj.destroyRightPos = obj.distanceLeft - objRight.distanceLeft
        obj.myDirection = 1
        obj.destroy = true
        combine[ty] = true
        return true
    }
}

else{
    return false
}
