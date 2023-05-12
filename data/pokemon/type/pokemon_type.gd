extends Resource
class_name PokemonType

@export var name: String
@export var symbol_icon: Texture
@export var tera_symbol_icon: Texture
@export var name_icon: Texture
@export var tera_name_icon: Texture
@export var color: Color

@export var weaknesses: Array[PokemonType]
@export var resistances: Array[PokemonType] 
@export var immunities: Array[PokemonType] 

func _init(p_name = "", p_symbol_icon = null, p_tera_symbol_icon = null, p_name_icon = null, 
		p_tera_name_icon = null, p_color = Color(0, 0, 0), p_weaknesses = [], p_resistances = [], p_immunities = []):
	name = p_name
	symbol_icon = p_symbol_icon
	tera_symbol_icon = p_tera_symbol_icon
	name_icon = p_name_icon
	tera_name_icon = p_tera_name_icon
	color = p_color
	weaknesses = p_weaknesses
	resistances = p_resistances
	immunities = p_immunities
	
