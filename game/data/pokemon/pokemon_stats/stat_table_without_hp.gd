extends Resource
class_name StatTableWithoutHP

var attack
var defense
var special_attack
var special_defense
var speed

var stat_max # the maximum value for each stat in this table
var stat_min # the minimum value for each stat in this table
var stat_max_total # the maximum total value for all stats in this table



# stat aliases
var atk: get = get_attack, set = set_attack
var def: get = get_defense, set = set_defense
var sp_atk: get = get_special_attack, set = set_special_attack
var spa: get = get_special_attack, set = set_special_attack
var sp_def: get = get_special_defense, set = set_special_defense
var spd: get = get_special_defense, set = set_special_defense
var spe: get = get_speed, set = set_speed

func _init(p_stat_data, p_stat_max = null, p_stat_min = null, p_stat_max_total = null):
    if p_stat_data.has("attack") or p_stat_data.has("atk"):
        attack = p_stat_data.attack or p_stat_data.atk
    if p_stat_data.has("defense") or p_stat_data.has("def"):
        defense = p_stat_data.defense or p_stat_data.def
    if p_stat_data.has("special_attack") or p_stat_data.has("sp_atk") or p_stat_data.has("spa"):
        special_attack = p_stat_data.special_attack or p_stat_data.sp_atk or p_stat_data.spa
    if p_stat_data.has("special_defense") or p_stat_data.has("sp_def") or p_stat_data.has("spd"):
        special_defense = p_stat_data.special_defense or p_stat_data.sp_def or p_stat_data.spd
    if p_stat_data.has("speed") or p_stat_data.has("spe"):
        speed = p_stat_data.speed or p_stat_data.spe

    stat_max = p_stat_max
    stat_min = p_stat_min
    stat_max_total = p_stat_max_total
    

func get_attack():
    return attack

func set_attack(p_attack):
    attack = p_attack

func get_defense():
    return defense

func set_defense(p_defense):
    defense = p_defense

func get_special_attack():
    return special_attack

func set_special_attack(p_special_attack):
    special_attack = p_special_attack

func get_special_defense():
    return special_defense

func set_special_defense(p_special_defense):
    special_defense = p_special_defense

func get_speed():
    return speed

func set_speed(p_speed):
    speed = p_speed