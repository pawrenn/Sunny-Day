var curObj = argument0
var curStripe
var j = instance_number(obj_Stripe)
show_debug_message(string(j))
for(var i = 0; i < j; i++){

}
for(var i = 0; i < j; i++){
    curStripe = instance_find(obj_Stripe,i)
    show_debug_message(string(i) + string(curStripe.id) + " " + string(curObj.id))
    //if(curStripe.myTile == curObj.id){
      //  with (curStripe) {
        //    instance_destroy()
        //}
    //}
}
