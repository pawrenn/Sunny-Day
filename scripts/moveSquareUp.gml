var grid = argument0
var tx = argument1
var ty = argument2

obj = ds_grid_get(grid,tx,ty)
    
objUp = ds_grid_get(grid,tx,ty-1)

//no square above
if(objUp==noone){ 
    ds_grid_set(grid,tx,ty,noone)
    ds_grid_set(grid,tx,ty-1,obj.id)
    obj.moving = true
    obj.distanceLeft = obj.distanceLeft + 1
    obj.myDirection = -2
    return true
}

if(combine[tx] == false){
    //square above will make orange
    if(((objUp.color==2)and(obj.color==3)) or ((objUp.color==3)and(obj.color==2))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty-1,obj.id)
        obj.color = 4
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyUp = obj.distanceLeft
        obj.destroyUpPos = obj.distanceLeft - objUp.distanceLeft
        obj.myDirection = -2
        combine[tx] = true
        return true
    }
    
    //square above will make purple
    else if(((objUp.color==1)and(obj.color==2)) or ((objUp.color==2)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty-1,obj.id)
        obj.color = 5
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyUp = obj.distanceLeft
        obj.destroyUpPos = obj.distanceLeft - objUp.distanceLeft
        obj.myDirection = -2
        combine[tx] = true
        return true
    }
    
    //square above will make green
    else if(((objUp.color==1)and(obj.color==3)) or ((objUp.color==3)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty-1,obj.id)
        obj.color = 6
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyUp = obj.distanceLeft
        obj.destroyUpPos = obj.distanceLeft - objUp.distanceLeft
        obj.myDirection = -2
        combine[tx] = true
        return true
    }
    
    //square above is white
    else if(objUp.color == 7 and obj.color != 8){
        if(string_pos(string(obj.color), objUp.stripes) == 0){
            ds_grid_set(grid,tx,ty,noone)
            objUp.stripes = objUp.stripes + string(obj.color)
            obj.distanceLeft = obj.distanceLeft + 1
            obj.moving = true
            obj.myDirection = -2
            obj.turningIntoStripe = true
            obj.stripeID = objUp.id
            obj.destroy = true
            combine[tx] = true
            return true
        }
        else{
            return false
        }
    }
    
    //square above is the same color
    else if(objUp.color==obj.color and obj.color != 8){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty-1,noone)
        obj.moving = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.destroyUp = obj.distanceLeft
        obj.destroyUpPos = obj.distanceLeft - objUp.distanceLeft
        obj.myDirection = -2
        obj.destroy = true
        combine[tx] = true
        return true
    }
}

else{
    return false
}
