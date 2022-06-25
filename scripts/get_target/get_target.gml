// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_target(targetObject){
	//var nearestTarget = instance_nearest(x,y,targetObject);
	//if (nearestTarget == noone) return undefined;
	//return nearestTarget;

	var c_obj = noone;  //Clear initial closest object
	var c_dis = 999999; //Maximum distance to check

	with (targetObject) {
	    if (health > 0) {
	        var dis = point_distance(x, y, other.x, other.y);
	        if (dis < c_dis) {
	            c_obj = id;
	            c_dis = dis;
	        }
	    }
	}
	return c_obj;
}