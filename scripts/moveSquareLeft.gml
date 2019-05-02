var grid = argument0
var tx = argument1
var ty = argument2

obj = ds_grid_get(grid,tx,ty)
    
objLeft = ds_grid_get(grid,tx-1,ty)

//no square to the left
if(objLeft==noone){ 
    ds_grid_set(grid,tx,ty,noone)
    ds_grid_set(grid,tx-1,ty,obj.id)
    obj.moving = true
    obj.distanceLeft = obj.distanceLeft + 1
    obj.myDirection = -1
    return true
}

if(combine[ty] == false){
    //square to the left will make orange
    if(((objLeft.color==2)and(obj.color==3)) or ((objLeft.color==3)and(obj.color==2))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx-1,ty,obj.id)
        obj.color = 4
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyLeft = obj.distanceLeft
        obj.destroyLeftPos = obj.distanceLeft-objLeft.distanceLeft
        obj.myDirection = -1
        combine[ty] = true
        return true
    }
    
    //square to the left will make purple
    if(((objLeft.color==1)and(obj.color==2)) or ((objLeft.color==2)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx-1,ty,obj.id)
        obj.color = 5
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyLeft = obj.distanceLeft
        obj.destroyLeftPos = obj.distanceLeft-objLeft.distanceLeft
        obj.myDirection = -1
        combine[ty] = true
        return true
    }
    
    //square to the left will make green
    else if(((objLeft.color==1)and(obj.color==3)) or ((objLeft.color==3)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx-1,ty,obj.id)
        obj.color = 6
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyLeft = obj.distanceLeft
        obj.destroyLeftPos = obj.distanceLeft-objLeft.distanceLeft
        obj.myDirection = -1
        combine[ty] = true
        return true
    }
    
    //square to the left is white
    else if(objLeft.color == 7 and obj.color != 8){
        if(string_pos(string(obj.color), objLeft.stripes) == 0){
            ds_grid_set(grid,tx,ty,noone)
            objLeft.stripes = objLeft.stripes + string(obj.color)
            obj.distanceLeft = obj.distanceLeft + 1
            obj.moving = true
            obj.myDirection = -1
            obj.turningIntoStripe = true
            obj.stripeID = objLeft.id
            obj.destroy = true
            combine[ty] = true
            return true
        }
        else{
            return false
        }
    }
    
    //square to the left is the same color
    else if(objLeft.color==obj.color and obj.color != 8){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx-1,ty,noone)
        obj.moving = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.destroyLeft = obj.distanceLeft
        obj.destroyLeftPos = obj.distanceLeft-objLeft.distanceLeft
        obj.myDirection = -1
        obj.destroy = true
        combine[ty] = true
        return true
    }
}

else{
    return false
}

