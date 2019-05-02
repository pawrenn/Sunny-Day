var grid = argument0
var tx = argument1
var ty = argument2

obj = ds_grid_get(grid,tx,ty)
    
objDown = ds_grid_get(grid,tx,ty+1)

//no square below
if(objDown==noone){ 
    ds_grid_set(grid,tx,ty,noone)
    ds_grid_set(grid,tx,ty+1,obj.id)
    obj.moving = true
    obj.distanceLeft = obj.distanceLeft + 1
    obj.myDirection = 2
    return true
}

if(combine[tx] == false){
    //square below will make orange
    if(((objDown.color==2)and(obj.color==3)) or ((objDown.color==3)and(obj.color==2))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty+1,obj.id)
        obj.color = 4
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyDown = obj.distanceLeft
        obj.destroyDownPos = obj.distanceLeft - objDown.distanceLeft
        obj.myDirection = 2
        combine[tx] = true
        return true
    }
    
    //square below will make purple
    else if(((objDown.color==1)and(obj.color==2)) or ((objDown.color==2)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty+1,obj.id)
        obj.color = 5
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyDown = obj.distanceLeft
        obj.destroyDownPos = obj.distanceLeft - objDown.distanceLeft
        obj.myDirection = 2
        combine[tx] = true
        return true
    }
    
    //square below will make green
    else if(((objDown.color==1)and(obj.color==3)) or ((objDown.color==3)and(obj.color==1))){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty+1,obj.id)
        obj.color = 6
        obj.moving = true
        obj.newColor = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.colorDistance = obj.distanceLeft
        obj.destroyDown = obj.distanceLeft
        obj.destroyDownPos = obj.distanceLeft - objDown.distanceLeft
        obj.myDirection = 2
        combine[tx] = true
        return true
    }
    
    //square below is white
    else if(objDown.color == 7 and obj.color != 8){
        if(string_pos(string(obj.color), objDown.stripes) == 0){
            ds_grid_set(grid,tx,ty,noone)
            objDown.stripes = objDown.stripes + string(obj.color)
            obj.distanceLeft = obj.distanceLeft + 1
            obj.moving = true
            obj.myDirection = 2
            obj.turningIntoStripe = true
            obj.stripeID = objDown.id
            obj.destroy = true
            combine[tx] = true
            return true
        }
        else{
            return false
        }
    }
    
    //square below is the same color
    else if(objDown.color==obj.color and obj.color != 8){
        ds_grid_set(grid,tx,ty,noone)
        ds_grid_set(grid,tx,ty+1,noone)
        obj.moving = true
        obj.distanceLeft = obj.distanceLeft + 1
        obj.destroyDown = obj.distanceLeft
        obj.destroyDownPos = obj.distanceLeft - objDown.distanceLeft
        obj.myDirection = 2
        obj.destroy = true
        combine[tx] = true
        return true
    }
}

else{
    return false
}
