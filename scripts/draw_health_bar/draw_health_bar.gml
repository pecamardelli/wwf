// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_health_bar(character){
	if (is_undefined(character)) return;
	
	var backgroundX1 = character.healthBarX;
	var backgroundY1 = character.healthBarY;
	var backgroundX2 = backgroundX1 + healthBarWidth;
	var backgroundY2 = backgroundY1 + healthBarHeight;
	
	draw_set_color(c_green);
	draw_set_font(fontFranklinGothicDemi);
	draw_set_halign(fa_left);
	draw_set_valign(fa_bottom);
	draw_text_color(
		backgroundX1,
		backgroundY1-10,
		character.data.character.name,
		c_white,
		c_white,
		c_white,
		c_white,
		1
	);
	
	draw_roundrect_color_ext(backgroundX1,backgroundY1,backgroundX2,backgroundY2,5,5,c_white,c_white,false);
	
	if (character.healthOnBar > 0) {
		var healthPercent = character.currentHealth / character.maxHealth * 100;
		
		if (healthPercent <= healthBarColorDangerThreshold) {
			var mergeAmount = healthPercent / healthBarColorDangerThreshold;
			var healthBarColor = merge_color(healthBarColorDanger, healthBarColorWarning, mergeAmount);
		}
		else if (healthPercent <= healthBarColorWarningThreshold) {
			var mergeAmount = healthPercent / healthBarColorWarningThreshold;
			var healthBarColor = merge_color(healthBarColorWarning, healthBarColorDefault, mergeAmount);
		}
		else var healthBarColor = healthBarColorDefault;
			
		var borderThickness = 5;
		var healthX1 = backgroundX1 + borderThickness;
		var healthY1 = backgroundY1 + borderThickness;
		var healthWidth = character.healthOnBar * healthBarWidth / character.maxHealth - borderThickness*2;
	
		var healthX2 = healthX1 + healthWidth;
		var healthY2 = backgroundY2 - borderThickness;
		draw_roundrect_color_ext(healthX1,healthY1,healthX2,healthY2,5,5,healthBarColor,healthBarColor,false);
	}

}