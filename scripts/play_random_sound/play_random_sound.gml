// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function play_random_sound(soundArray, customAudioEmitter){
	if (!is_array(soundArray)) return undefined;
	if (array_length(soundArray) == 0) return undefined;
	
	var randomSound = soundArray[irandom(array_length(soundArray)-1)]
	
	if (!is_undefined(customAudioEmitter)) var _audioEmitter = customAudioEmitter;
	else var _audioEmitter = audioEmitter;
	
	return audio_play_sound_on(_audioEmitter,randomSound,false,1);
}