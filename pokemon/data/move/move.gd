extends Dexable
class_name Move

# Information that shows in game. For battle data see the MoveBattleData class.

@export var name: String
@export var description: String
@export var short_description: String


@export var base_power: String
@export var accuracy: String
@export var max_pp: int
@export var current_pp: int

@export var category: PokemonData.MoveCategory
@export var contest_type: PokemonData.ContestType

@export var type: PokemonType

func _init(
    p_name: String = "",
    p_description: String = "",
    p_short_description: String = "",
    p_base_power: String = "-",
    p_accuracy: String = "-",
    p_max_pp: int = 0,
    p_current_pp: int = 0,
    p_category: PokemonData.MoveCategory = PokemonData.MoveCategory.PHYSICAL,
    p_contest_type: PokemonData.ContestType = PokemonData.ContestType.COOL,
    p_type: String = ""
):
    name = p_name
    description = p_description
    short_description = p_short_description
    base_power = p_base_power
    accuracy = p_accuracy
    max_pp = p_max_pp
    current_pp = p_current_pp
    category = p_category
    contest_type = p_contest_type
    type = Global.dex.get_type(p_type)