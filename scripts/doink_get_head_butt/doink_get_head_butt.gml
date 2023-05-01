// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function doink_get_head_butt(){
	return new Attack(
		ATTACK_FORWARD,
		{ POSITION_FRONT: spriteDoinkHeadbuttFront, POSITION_BACK: spriteDoinkHeadbuttBack },
		80,
		50,
		[4],
		undefined,
		method(ObjectCharacter, function() {
			if (random(1) < 0.5) {
				audioEmitterSoundId = audio_play_sound_on(audioEmitter,sndDoinkHooter,false,1);
			}
		}),
		method(ObjectCharacter, function() { return arccos(-facing)*180/pi; }),
		{
			swing: [ sndSwing04, sndSwing05, sndSwing06 ,sndSwing07 ],
			hit: [ sndPunch02, sndPunch05, sndPunch07, sndPunch11 ],
			attack: []
		}
	);
}