extends Resource
class_name PokemonAbility

@export var index: int
@export var name: String
@export_multiline var short_description: String
@export_multiline var description: String
@export var generation: int
@export var ability_script: String

func _init(
	p_index:int = 0, 
	p_name:String = "", 
	p_short_description:String = "", 
	p_description:String = "", 
	p_generation:int = 0,
	p_ability_script:String = ""
) -> void:
	self.index = p_index
	self.name = p_name
	self.short_description = p_short_description
	self.description = p_description
	self.generation = p_generation
	self.ability_script = p_ability_script
