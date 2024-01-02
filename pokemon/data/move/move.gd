extends Dexable
class_name Move

@export var number: int
@export var name: String
@export var description: String
@export var short_description: String


@export var base_power: String
@export var priority: int
@export var accuracy: String
@export var max_pp: int

@export var category: PokemonData.MoveCategory
@export var contest_type: PokemonData.ContestType

@export var target: MoveData.MoveTarget
@export var flags: Array[MoveData.MoveFlag]

@export var type: PokemonType

@export var is_z: bool;
@export var z_item: Item;
@export var z_move_boost: BoostTable;

@export var is_max: bool;
@export var max_pokemon: PokemonForm;

func _init(
    p_name: String = "",
    p_description: String = "",
    p_short_description: String = "",
    p_base_power: String = "-",
    p_accuracy: String = "-",
    p_max_pp: int = 0,
    p_category: PokemonData.MoveCategory = PokemonData.MoveCategory.PHYSICAL,
    p_contest_type: PokemonData.ContestType = PokemonData.ContestType.COOL,
    p_type: String = ""
):
    self.id = Utils.to_id(p_name)
    self.name = p_name
    self.description = p_description
    self.short_description = p_short_description
    self.base_power = p_base_power
    self.accuracy = p_accuracy
    self.max_pp = p_max_pp
    self.category = p_category
    self.contest_type = p_contest_type
    self.type = Global.dex.get_type(p_type)