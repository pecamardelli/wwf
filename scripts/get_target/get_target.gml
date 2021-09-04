// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_target(targetObject){
	var nearestTarget = instance_nearest(x,y,targetObject);
	if (nearestTarget == noone) return undefined;
	return { x: nearestTarget.x, y: nearestTarget.y };
}