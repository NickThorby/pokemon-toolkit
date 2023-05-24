extends Resource
class_name PokemonGrowthRate

@export var name: String
@export var exp_per_level: Array[int]

func _init(
        p_name: String = "", 
        p_exp_per_level: Array[int] = []
):
    self.name = p_name;
    self.exp_per_level = p_exp_per_level;

func get_exp_for_level(level: int) -> int:
    return exp_per_level[level-1];