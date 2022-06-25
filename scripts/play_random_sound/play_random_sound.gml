// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_random_sound(soundArray, customAudioEmitter, gain){
	if (!is_array(soundArray)) return undefined;
	if (array_length(soundArray) == 0) return undefined;
	
	var randomSound = soundArray[irandom(array_length(soundArray)-1)]
	
	if (!is_undefined(customAudioEmitter)) var _audioEmitter = customAudioEmitter;
	else var _audioEmitter = audioEmitter;
	
	var previousGain = audio_emitter_get_gain(_audioEmitter);
	
	//if (audio_is_playing(currentAudio)) audio_stop_sound(currentAudio);
	
	if(!is_undefined(gain)) audio_emitter_gain(_audioEmitter, gain);
	else audio_emitter_gain(_audioEmitter, previousGain);
	
	currentAudio = audio_play_sound_on(_audioEmitter,randomSound,false,1);
	return currentAudio;
}