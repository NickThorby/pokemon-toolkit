extends Dexable
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
    national_dex_number = p_national_dex_number
    name = p_name
    classification = p_classification
    gender = p_gender
    footprint = p_footprint