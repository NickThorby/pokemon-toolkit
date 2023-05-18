extends StatTableWithoutHP
class_name BoostTable

var accuracy
var evasion

var acc: get = get_accuracy, set = set_accuracy
var eva: get = get_evasion, set = set_evasion

func _init(
    p_stat_data, 
    p_stat_max = null, 
    p_stat_min = null, 
    p_stat_max_total = null
):
    super(p_stat_data, p_stat_max, p_stat_min, p_stat_max_total)
    if p_stat_data.has("accuracy"):
        accuracy = p_stat_data.accuracy
    elif p_stat_data.has("acc"):
        accuracy = p_stat_data.acc
    if p_stat_data.has("evasion"):
        evasion = p_stat_data.evasion
    elif p_stat_data.has("eva"):
        evasion = p_stat_data.eva

func get_accuracy():
    return accuracy

func set_accuracy(p_accuracy):
    accuracy = p_accuracy

func get_evasion():
    return evasion

func set_evasion(p_evasion):
    evasion = p_evasion

func get_stat(p_stat):
    if typeof(p_stat) == TYPE_STRING:
        if p_stat == 'attack' or p_stat == 'atk':
            return attack
        elif p_stat == 'defense' or p_stat == 'def':
            return defense
        elif p_stat == 'special_attack' or p_stat == 'sp_atk' or p_stat == 'spa':
            return special_attack
        elif p_stat == 'special_defense' or p_stat == 'sp_def' or p_stat == 'spd':
            return special_defense
        elif p_stat == 'speed' or p_stat == 'spe':
            return speed
        elif p_stat == 'accuracy' or p_stat == 'acc':
            return accuracy
        elif p_stat == 'evasion' or p_stat == 'eva':
            return evasion
        else:
            return null
    elif typeof(p_stat) == TYPE_INT:
        if p_stat == GameData.PokemonStat.ATTACK:
            return attack
        elif p_stat == GameData.PokemonStat.DEFENSE:
            return defense
        elif p_stat == GameData.PokemonStat.SPECIAL_ATTACK:
            return special_attack
        elif p_stat == GameData.PokemonStat.SPECIAL_DEFENSE:
            return special_defense
        elif p_stat == GameData.PokemonStat.SPEED:
            return speed
        elif p_stat == GameData.PokemonStat.ACCURACY:
            return accuracy
        elif p_stat == GameData.PokemonStat.EVASION:
            return evasion
        else:
            return null
    else:
        return null

static func get_label(p_stat ,p_length = "short"):
    if typeof(p_stat) == TYPE_INT:
        if p_stat == GameData.PokemonStat.ATTACK:
            if p_length == "long":
                return "attack"
            elif p_length == "short":
                return "atk"
        elif p_stat == GameData.PokemonStat.DEFENSE:
            if p_length == "long":
                return "defense"
            elif p_length == "short":
                return "def"
        elif p_stat == GameData.PokemonStat.SPECIAL_ATTACK:
            if p_length == "long":
                return "special attack"
            elif p_length == "short":
                return "sp_atk"
        elif p_stat == GameData.PokemonStat.SPECIAL_DEFENSE:
            if p_length == "long":
                return "special defense"
            elif p_length == "short":
                return "sp_def"
        elif p_stat == GameData.PokemonStat.SPEED:
            if p_length == "long":
                return "speed"
            elif p_length == "short":
                return "spe"
        elif p_stat == GameData.PokemonStat.ACCURACY:
            if p_length == "long":
                return "accuracy"
            elif p_length == "short":
                return "acc"
        elif p_stat == GameData.PokemonStat.EVASION:
            if p_length == "long":
                return "evasion"
            elif p_length == "short":
                return "eva"
        else:
            return null

static func get_display(p_stat):
    if typeof(p_stat) == TYPE_INT:
        if p_stat == GameData.PokemonStat.ATTACK:
            return "Attack"
        elif p_stat == GameData.PokemonStat.DEFENSE:
            return "Defense"
        elif p_stat == GameData.PokemonStat.SPECIAL_ATTACK:
            return "Special Attack"
        elif p_stat == GameData.PokemonStat.SPECIAL_DEFENSE:
            return "Special Defense"
        elif p_stat == GameData.PokemonStat.SPEED:
            return "Speed"
        elif p_stat == GameData.PokemonStat.ACCURACY:
            return "Accuracy"
        elif p_stat == GameData.PokemonStat.EVASION:
            return "Evasion"
        else:
            return null