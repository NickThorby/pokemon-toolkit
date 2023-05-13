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

func _init(
	p_name = "", 
	p_symbol_icon = null, 
	p_tera_symbol_icon = null, 
	p_name_icon = null, 
	p_tera_name_icon = null, 
	p_color = Color(0, 0, 0), 
	p_weaknesses = [], 
	p_resistances = [], 
	p_immunities = []
) -> void:
	self.name = p_name
	self.symbol_icon = p_symbol_icon
	self.tera_symbol_icon = p_tera_symbol_icon
	self.name_icon = p_name_icon
	self.tera_name_icon = p_tera_name_icon
	self.color = p_color
	self.weaknesses = p_weaknesses
	self.resistances = p_resistances
	self.immunities = p_immunities
	
