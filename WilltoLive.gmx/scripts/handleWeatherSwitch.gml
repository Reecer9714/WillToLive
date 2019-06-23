if global.weather == "rain" {
    //effect_create_above(ef_rain,view_xview[0],view_yview[0],2,c_navy)
    if(!audio_is_playing(s_rain)){
        audio_play_sound(s_rain,1,true);
        //audio_sound_gain(s_rain,0,0)
        audio_sound_gain(s_rain,0.5,15 * room_speed);
    } 
    if(!instance_exists(obj_rain_generator))
        instance_create(0,0,obj_rain_generator);
}else{
    //effect_clear()
    if(audio_sound_get_gain(s_rain) == 0){
        audio_stop_sound(s_rain);
    }else{
        audio_sound_gain(s_rain,0,8 * room_speed);
    } 
    with(obj_rain_generator){
        instance_destroy();
    }
}
