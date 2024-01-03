extends Resource
class_name PokemonSpecies

@export var national_dex_number: int
@export var name: String
@export var classification: PokemonData.PokemonClassification
@export var gender: PokemonData.PokemonGender
@export var footprint: Texture

func _init(
    p_national_dex_number: int,
    p_name: String = "",
    p_classification: PokemonData.PokemonClassification = PokemonData.PokemonClassification.NORMAL,
    p_gender: PokemonData.PokemonGender = PokemonData.PokemonGender.GENDERLESS,
    p_footprint: Texture = null
):
    self.national_dex_number = p_national_dex_number
    self.name = p_name
    self.classification = p_classification
    self.gender = p_gender
    self.footprint = p_footprint