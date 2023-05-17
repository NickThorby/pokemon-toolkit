extends Resource
class_name PokemonSpecies

@export var national_dex_number: int
@export var name: String
@export var classification: GameData.PokemonClassification
@export var footprint: Texture

func _init(
    p_national_dex_number: int = 0,
    p_name = "",
    p_has_gender = true,
    p_classification = null,
    p_footprint = null
) -> void:
    self.national_dex_number = p_national_dex_number
    self.name = p_name
    self.has_gender = p_has_gender
    self.classification = p_classification
    self.footprint = p_footprint