extends Resource
class_name PokemonEggGroup

@export var name: String

func _init(
    p_name = ""
) -> void:
    self.name = p_name