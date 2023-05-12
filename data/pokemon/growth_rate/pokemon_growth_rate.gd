extends Resource
class_name PokemonGrowthRate

@export var name: String
@export var exp_per_level: Array[int]

func get_exp_for_level(level: int) -> int:
    return exp_per_level[level-1];