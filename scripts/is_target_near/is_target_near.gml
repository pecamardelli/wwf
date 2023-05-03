// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_target_near(){
	if(is_undefined(target)) return false;
	
	if(abs(target.x - x) <= 100 && abs(target.y - y) <= 80) return true;
	
	return false;
}