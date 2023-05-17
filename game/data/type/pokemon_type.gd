extends Resource
class_name PokemonType

@export var name: String
@export var symbol_icon: Texture
@export var tera_symbol_icon: Texture
@export var name_icon: Texture
@export var tera_name_icon: Texture
@export var color: Color

@export var gen: int

@export var damage_taken: Dictionary # {type_name: Dex.DamageResult} 
@export var hidden_power_ivs: Array[Dictionary]
@export var hidden_power_dvs: Array[Dictionary]

func _init(
	p_name = "", 
	p_symbol_icon = null, 
	p_tera_symbol_icon = null, 
	p_name_icon = null, 
	p_tera_name_icon = null, 
	p_color = Color(0, 0, 0),
	p_gen = 0,
	p_damage_taken = {},
	p_hidden_power_ivs = [],
	p_hidden_power_dvs = []
) -> void:
	self.name = p_name
	self.symbol_icon = p_symbol_icon
	self.tera_symbol_icon = p_tera_symbol_icon
	self.name_icon = p_name_icon
	self.tera_name_icon = p_tera_name_icon
	self.color = p_color
	self.gen = p_gen
	self.damage_taken = p_damage_taken
	self.hidden_power_ivs = p_hidden_power_ivs
	self.hidden_power_dvs = p_hidden_power_dvs

	
