extends Resource
class_name PokemonClassification

@export var name: String

func _init(
    p_name: String = ""
) -> void:
    self.name = p_name