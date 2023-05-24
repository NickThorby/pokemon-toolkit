extends StatTableWithoutHP
class_name StatTable

var hp

func _init(
    p_stat_data, 
    p_stat_max = null, 
    p_stat_min = null, 
    p_stat_max_total = null
):
    super(p_stat_data, p_stat_max, p_stat_min, p_stat_max_total)
    if p_stat_data.has("hp"):
        self.hp = p_stat_data.hp
    elif p_stat_data.has(PokemonData.PokemonStat.HP):
        self.hp = p_stat_data[PokemonData.PokemonStat.HP]

func get_stat(p_stat):
    if typeof(p_stat) == TYPE_STRING:
        if p_stat == 'hp':
            return hp
        elif p_stat == 'attack' or p_stat == 'atk':
            return attack
        elif p_stat == 'defense' or p_stat == 'def':
            return defense
        elif p_stat == 'special_attack' or p_stat == 'sp_atk' or p_stat == 'spa':
            return special_attack
        elif p_stat == 'special_defense' or p_stat == 'sp_def' or p_stat == 'spd':
            return special_defense
        elif p_stat == 'speed' or p_stat == 'spe':
            return speed
        else:
            return null
    elif typeof(p_stat) == TYPE_INT:
        if p_stat == PokemonData.PokemonStat.HP:
            return hp
        elif p_stat == PokemonData.PokemonStat.ATTACK:
            return attack
        elif p_stat == PokemonData.PokemonStat.DEFENSE:
            return defense
        elif p_stat == PokemonData.PokemonStat.SPECIAL_ATTACK:
            return special_attack
        elif p_stat == PokemonData.PokemonStat.SPECIAL_DEFENSE:
            return special_defense
        elif p_stat == PokemonData.PokemonStat.SPEED:
            return speed
        else:
            return null
    else:
        return null

static func get_label(p_stat ,p_length = "short"):
    if typeof(p_stat) == TYPE_INT:
        if p_stat == PokemonData.PokemonStat.HP:
            if p_length == "long":
                return "hp"
            elif p_length == "short":
                return "hp"
        elif p_stat == PokemonData.PokemonStat.ATTACK:
            if p_length == "long":
                return "attack"
            elif p_length == "short":
                return "atk"
        elif p_stat == PokemonData.PokemonStat.DEFENSE:
            if p_length == "long":
                return "defense"
            elif p_length == "short":
                return "def"
        elif p_stat == PokemonData.PokemonStat.SPECIAL_ATTACK:
            if p_length == "long":
                return "special attack"
            elif p_length == "short":
                return "sp_atk"
        elif p_stat == PokemonData.PokemonStat.SPECIAL_DEFENSE:
            if p_length == "long":
                return "special defense"
            elif p_length == "short":
                return "sp_def"
        elif p_stat == PokemonData.PokemonStat.SPEED:
            if p_length == "long":
                return "speed"
            elif p_length == "short":
                return "spe"
        else:
            return null 

static func get_display(p_stat):
    if typeof(p_stat) == TYPE_INT:
        if p_stat == PokemonData.PokemonStat.HP:
            return "HP"
        elif p_stat == PokemonData.PokemonStat.ATTACK:
            return "Attack"
        elif p_stat == PokemonData.PokemonStat.DEFENSE:
            return "Defense"
        elif p_stat == PokemonData.PokemonStat.SPECIAL_ATTACK:
            return "Special Attack"
        elif p_stat == PokemonData.PokemonStat.SPECIAL_DEFENSE:
            return "Special Defense"
        elif p_stat == PokemonData.PokemonStat.SPEED:
            return "Speed"
        else:
            return null