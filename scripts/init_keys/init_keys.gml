// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_keys(){
	left	= false;
	right	= false;
	up		= false;
	down	= false;
	
	leftPressed		= false;
	rightPressed	= false;
	upPressed		= false;
	downPressed		= false;
	
	forward	= false;
	backward = false;
	
	forwardPressed	= false;
	backwardPressed = false;

	midPunch	= false;
	block		= false;
	midKick		= false;
	powerPunch	= false;
	trot		= false;
	powerKick	= false;
	
	if (current_time - keyLastPressedTime.downForward > MULTIKEY_TIME) downForward = false;
	if (current_time - keyLastPressedTime.downBackward > MULTIKEY_TIME) downBackward = false;
	if (current_time - keyLastPressedTime.doubleForward > MULTIKEY_TIME) doubleForward = false;
	if (current_time - keyLastPressedTime.doubleBackward > MULTIKEY_TIME) doubleBackward = false;
	if (current_time - keyLastPressedTime.doubleDown > MULTIKEY_TIME) doubleDown = false;
	if (current_time - keyLastPressedTime.doubleUp > MULTIKEY_TIME) doubleUp = false;
	
	start	= false;
	select	= false;
}