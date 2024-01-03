extends Node

func calc_max_hp(base_hp, level, iv, ev):
    return 0;

func calc_stat(base_stat, level, iv, ev):
    return 0;

func calc_hidden_power_type(ivs):
    return 0;

func calc_hidden_power_power(ivs):
    return 0;

func calc_tera_type(primary_type, secondary_type):
    if(!secondary_type):
        return primary_type
    else:
        var tera_type_int = Global.prng.next(0, 2)
        if(tera_type_int == 0):
            return primary_type
        else:
            return secondary_type

func calc_shininess(personality_value, ivs):
    return 0;