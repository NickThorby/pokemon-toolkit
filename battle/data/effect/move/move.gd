extends Effect
class_name Move

@export var number: int

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

@export var status: Condition
@export var weather: Condition

var on_damage_priority: int

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
    self.name = p_name
    self.description = p_description
    self.short_description = p_short_description
    self.base_power = p_base_power
    self.accuracy = p_accuracy
    self.max_pp = p_max_pp
    self.category = p_category
    self.contest_type = p_contest_type
    self.type = Global.dex.get_type(p_type)
    
func base_power_callback(data: Dictionary):
    pass

func before_move_callback(data: Dictionary):
    pass

func before_turn_callback(data: Dictionary):
    pass

func damage_callback(data: Dictionary):
    pass

func priority_charge_callback(data: Dictionary):
    pass

func on_disable_move(data: Dictionary):
    pass

func on_after_hit(data: Dictionary):
    pass

func on_after_sub_damage(data: Dictionary):
    pass

func on_after_move_secondary_self(data: Dictionary):
    pass

func on_after_move_secondary(data: Dictionary):
    pass

func on_after_move(data: Dictionary):
    pass

func on_damage(data: Dictionary):
    pass

func on_base_power(data: Dictionary):
    pass

func on_effectiveness(data: Dictionary):
    pass

func on_hit(data: Dictionary):
    pass

func on_hit_field(data: Dictionary):
    pass

func on_hit_side(data: Dictionary):
    pass

func on_modify_move(data: Dictionary):
    pass

func on_modify_priority(data: Dictionary):
    pass

func on_move_fail(data: Dictionary):
    pass

func on_modify_type(data: Dictionary):
    pass

func on_modify_target(data: Dictionary):
    pass

func on_prepare_hit(data: Dictionary):
    pass

func on_try(data: Dictionary):
    pass

func on_try_hit(data: Dictionary):
    pass

func on_try_hit_field(data: Dictionary):
    pass

func on_try_hit_side(data: Dictionary):
    pass

func on_try_immunity(data: Dictionary):
    pass

func on_try_move(data: Dictionary):
    pass

func on_use_move_message(data: Dictionary):
    pass
    