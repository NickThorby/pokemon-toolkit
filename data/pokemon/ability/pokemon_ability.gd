extends Resource
class_name PokemonAbility

@export var number: int
@export var name: String
@export_multiline var short_description: String
@export_multiline var description: String
@export var generation: int

func _init(p_name:String = "", p_number:int = 0, p_short_description:String = "", p_description:String = "", p_generation:int = 0):
	name = p_name
	number = p_number
	short_description = p_short_description
	description = p_description
	generation = p_generation
