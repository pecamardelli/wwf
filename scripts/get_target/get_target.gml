// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_target(targetObject){
	if (status == ATTACKING) return target;
	var closestObject = undefined;  //Clear initial closest object
	var distance = 999999; //Maximum distance to check

	with (targetObject) {
	    if (health > 0 && canBeHit) {
	        var dis = point_distance(x, floorY, other.x, other.floorY);
	        if (dis < distance) {
	            closestObject = id;
	            distance = dis;
	        }
	    }
	}
	
	return closestObject;
}