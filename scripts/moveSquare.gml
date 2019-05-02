var curSquare = argument0
var myDirection = argument1
var tempBoard = argument2
var tx = argument3
var ty = argument4
var destroying = false
var tempSquare = noone
var tempStripe = noone
var stripeColor = -1

//-1 will be left
if (curSquare.myDirection = -1 and curSquare.distanceLeft != 0) {
    if (curSquare.moveTime != 1 and curSquare.x > 51){
        curSquare.x = curSquare.x - (73/(room_speed/6))
        curSquare.moveTime = curSquare.moveTime + (1/(room_speed/6))
        return 1
    }
    else{
        curSquare.moveTime = 0
        curSquare.distanceLeft--
        if(curSquare.colorDistance > 0){
            curSquare.colorDistance--
        }
        if(curSquare.colorDistance == 0){
            colorChange(curSquare)
        }
        if(curSquare.destroyLeft > 0){
            curSquare.destroyLeft--
            if(curSquare.destroyLeft == 0){
                destroying = true
            }
        }
        if(destroying){
            tempSquare = ds_grid_get(tempBoard,tx-curSquare.destroyLeftPos,ty)
            ds_grid_set(tempBoard,tx-curSquare.destroyLeftPos,ty,noone)
            with (tempSquare) {instance_destroy()}
            destroying = false
        }
        if (curSquare.distanceLeft==0){
            if(curSquare.turningIntoStripe == true){
                tempStripe = instance_create(curSquare.x,curSquare.y,obj_Stripe)
                tempStripe.myTile = curSquare.stripeID
                tempStripe.stripeColor = curSquare.color
            }
            curSquare.moving = false
            return 0
        }
        else {return 1}
    }
}


//1 will be right
if (curSquare.myDirection = 1 and curSquare.distanceLeft != 0) {
    if (curSquare.moveTime != 1 and curSquare.x < 270){
        curSquare.x = curSquare.x + (73/(room_speed/6))
        curSquare.moveTime = curSquare.moveTime + (1/(room_speed/6))
        return 1
    }
    else{
        curSquare.moveTime = 0
        curSquare.distanceLeft--
        if(curSquare.colorDistance > 0){
            curSquare.colorDistance--
        }
        if(curSquare.colorDistance == 0){
            colorChange(curSquare)
        }
        if(curSquare.destroyRight > 0){
            curSquare.destroyRight--
            if(curSquare.destroyRight == 0){
                destroying = true
            }
        }
        if(destroying){
            tempSquare = ds_grid_get(tempBoard,tx+curSquare.destroyRightPos,ty)
            ds_grid_set(tempBoard,tx+curSquare.destroyRightPos,ty,noone)
            with (tempSquare) {instance_destroy()}
            destroying = false
        }
        if (curSquare.distanceLeft==0){
            if(curSquare.turningIntoStripe == true){
                tempStripe = instance_create(curSquare.x,curSquare.y,obj_Stripe)
                tempStripe.myTile = curSquare.stripeID
                tempStripe.stripeColor = curSquare.color
            }
            curSquare.moving = false
            return 0
        }
        else {return 1}
    }
}

//-2 will be up
if (curSquare.myDirection = -2 and curSquare.distanceLeft != 0) {
    if (curSquare.moveTime != 1 and curSquare.y > 177){
        curSquare.y = curSquare.y - (73/(room_speed/6))
        curSquare.moveTime = curSquare.moveTime + (1/(room_speed/6))
        return 1
    }
    else{
        curSquare.moveTime = 0
        curSquare.distanceLeft--
        if(curSquare.colorDistance > 0){
            curSquare.colorDistance--
        }
        if(curSquare.colorDistance == 0){
            colorChange(curSquare)
        }
        if(curSquare.destroyUp > 0){
            curSquare.destroyUp--
            if(curSquare.destroyUp == 0){
                destroying = true
            }
        }
        if(destroying){
            tempSquare = ds_grid_get(tempBoard,tx,ty-curSquare.destroyUpPos)
            ds_grid_set(tempBoard,tx,ty-curSquare.destroyUpPos,noone)
            with (tempSquare) {instance_destroy()}
            destroying = false
        }
        if (curSquare.distanceLeft==0){
            if(curSquare.turningIntoStripe == true){
                tempStripe = instance_create(curSquare.x,curSquare.y,obj_Stripe)
                tempStripe.myTile = curSquare.stripeID
                tempStripe.stripeColor = curSquare.color
            }
            curSquare.moving = false
            return 0
        }
        else {return 1}
    }
}

//2 will be down
if (curSquare.myDirection = 2 and curSquare.distanceLeft != 0) {
    if (curSquare.moveTime != 1 and curSquare.y < 396){
        curSquare.y = curSquare.y + (73/(room_speed/6))
        curSquare.moveTime = curSquare.moveTime + (1/(room_speed/6))
        return 1
    }
    else{
        curSquare.moveTime = 0
        curSquare.distanceLeft--
        if(curSquare.colorDistance > 0){
            curSquare.colorDistance--
        }
        if(curSquare.colorDistance == 0){
            colorChange(curSquare)
        }
        if(curSquare.destroyDown > 0){
            curSquare.destroyDown--
            if(curSquare.destroyDown == 0){
                destroying = true
            }
        }
        if(destroying){
            tempSquare = ds_grid_get(tempBoard,tx,ty+curSquare.destroyDownPos)
            ds_grid_set(tempBoard,tx,ty+curSquare.destroyDownPos,noone)
            with (tempSquare) {instance_destroy()}
            destroying = false
        }
        if (curSquare.distanceLeft==0){
            if(curSquare.turningIntoStripe == true){
                tempStripe = instance_create(curSquare.x,curSquare.y,obj_Stripe)
                tempStripe.myTile = curSquare.stripeID
                tempStripe.stripeColor = curSquare.color
            }
            curSquare.moving = false
            return 0
        }
        else {return 1}
    }
}
