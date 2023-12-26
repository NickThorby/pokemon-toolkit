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

func _init(
	p_stat_data: Dictionary, 
	p_stat_max = null, 
	p_stat_min = null, 
	p_stat_max_total = null,
):
	if p_stat_data.has("attack"):
		self.attack = p_stat_data.attack
	elif p_stat_data.has("atk"):
		self.attack = p_stat_data.atk
	elif p_stat_data.has(PokemonData.PokemonStat.ATTACK):
		self.attack = p_stat_data[PokemonData.PokemonStat.ATTACK]
	if p_stat_data.has("defense"):
		self.defense = p_stat_data.defense
	elif p_stat_data.has("def"):
		self.defense = p_stat_data.def
	elif p_stat_data.has(PokemonData.PokemonStat.DEFENSE):
		self.defense = p_stat_data[PokemonData.PokemonStat.DEFENSE]
	if p_stat_data.has("special_attack"):
		self.special_attack = p_stat_data.special_attack
	elif p_stat_data.has("sp_atk"):
		self.special_attack = p_stat_data.sp_atk
	elif p_stat_data.has("spa"):
		self.special_attack = p_stat_data.spa
	elif p_stat_data.has(PokemonData.PokemonStat.SPECIAL_ATTACK):
		self.special_attack = p_stat_data[PokemonData.PokemonStat.SPECIAL_ATTACK]
	elif p_stat_data.has("special"):
		self.special_attack = p_stat_data.special
	elif p_stat_data.has("spc"):
		self.special_attack = p_stat_data.spc
	elif p_stat_data.has(PokemonData.PokemonStat.SPECIAL):
		self.special_attack = p_stat_data[PokemonData.PokemonStat.SPECIAL]
	if p_stat_data.has("special_defense"):
		self.special_defense = p_stat_data.special_defense
	elif p_stat_data.has("sp_def"):
		self.special_defense = p_stat_data.sp_def
	elif p_stat_data.has("spd"):
		self.special_defense = p_stat_data.spd
	elif p_stat_data.has(PokemonData.PokemonStat.SPECIAL_DEFENSE):
		self.special_defense = p_stat_data[PokemonData.PokemonStat.SPECIAL_DEFENSE]
	if p_stat_data.has("speed"):
		self.speed = p_stat_data.speed
	elif p_stat_data.has("spe"):
		self.speed = p_stat_data.spe
	elif p_stat_data.has(PokemonData.PokemonStat.SPEED):
		self.speed = p_stat_data[PokemonData.PokemonStat.SPEED]

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

func get_special():
	return special_attack

func set_special(p_special):
	special_attack = p_special

func get_stat(p_stat):
	if typeof(p_stat) == TYPE_STRING:
		if p_stat == 'attack' or p_stat == 'atk':
			return attack
		elif p_stat == 'defense' or p_stat == 'def':
			return defense
		elif p_stat == 'special_attack' or p_stat == 'sp_atk' or p_stat == 'spa' or p_stat == "special" or p_stat == 'spc':
			return special_attack
		elif p_stat == 'special_defense' or p_stat == 'sp_def' or p_stat == 'spd':
			return special_defense
		elif p_stat == 'speed' or p_stat == 'spe':
			return speed
		else:
			return null
	elif typeof(p_stat) == TYPE_INT:
		if p_stat == PokemonData.PokemonStat.ATTACK:
			return attack
		elif p_stat == PokemonData.PokemonStat.DEFENSE:
			return defense
		elif p_stat == PokemonData.PokemonStat.SPECIAL_ATTACK or p_stat == PokemonData.PokemonStat.SPECIAL:
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
		if p_stat == PokemonData.PokemonStat.ATTACK:
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
		elif p_stat == PokemonData.PokemonStat.SPECIAL:
			if p_length == "long":
				return "special"
			elif p_length == "short":
				return "spc"
		else:
			return null 

static func get_display(p_stat):
	if typeof(p_stat) == TYPE_INT:
		if p_stat == PokemonData.PokemonStat.ATTACK:
			return "Attack"
		elif p_stat == PokemonData.PokemonStat.DEFENSE:
			return "Defense"
		elif p_stat == PokemonData.PokemonStat.SPECIAL_ATTACK:
			return "Special Attack"
		elif p_stat == PokemonData.PokemonStat.SPECIAL_DEFENSE:
			return "Special Defense"
		elif p_stat == PokemonData.PokemonStat.SPEED:
			return "Speed"
		elif p_stat == PokemonData.PokemonStat.SPECIAL:
			return "Special"
		else:
			return null
