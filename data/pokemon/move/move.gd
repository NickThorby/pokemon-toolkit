extends Resource
class_name PokemonMove

enum Category {
    PHYSICAL,
    SPECIAL,
    STATUS,
}
enum ContestType {
    COOL,
    BEAUTIFUL,
    CUTE,
    CLEVER,
    TOUGH,
    NONE
}

enum MoveFlags {
    CONTACT,
    DISTANCE,
    SLICING,
    WIND,
    SNATCH,
    BULLET,
    PROTECT,
    MIRROR,
    FAIL_ENCORE,
    NO_SLEEP_TALK,
    NO_ASSIST,
    FAIL_COPY_CAT,
    FAIL_INSTRUCT,
    FAIL_MIMIC,
    PUNCH,
    SOUND,
    DANCE,
    BYPASS_SUBSTITUTE,
}

enum Target {
    ANY,
    NORMAL,
    SELF,
    ALL_ADJACENT_FOES,
    ADJACENT_ALLY_OR_SELF,
    ALL_ADJACENT,
    ALL_ADJACENT_ALLIES,
    ALLY_TEAM
}


@export var index: int
@export var name: String
@export var category: Category
@export var type: PokemonType
@export var contest_type: ContestType

@export var base_power: int
@export var accuracy: int
@export var power_points: int
@export var priority: int
@export var crit_ratio: int

@export var multi_hit: Dictionary # {min:int, max:int}

@export var is_z: bool
@export var z_crystal: String
#@export var z_effect: ZMoveEffect

@export var target: Target
@export var effects: Array[Dictionary] # {chance:float, effect:MoveEffect} 
#@export var condition: MoveCondition

@export var flags: Array

@export var generation: int

@export var base_power_callback: Callable

@export var on_prepare_hit: Callable
@export var on_try_hit: Callable
@export var on_hit: Callable
@export var on_modify_type: Callable

@export var on_try: Callable
@export var on_try_immunity: Callable


func _init(
    p_index: int,
    p_name: String,
    p_type: PokemonType,
    p_category: Category,
    p_power: int,
    p_accuracy: int,
    p_power_points: int,
    p_priority: int,
    p_generation: int,
    p_move_script: String,
) -> void:
    self.index = p_index
    self.name = p_name
    self.type = p_type
    self.category = p_category
    self.power = p_power
    self.accuracy = p_accuracy
    self.power_points = p_power_points
    self.priority = p_priority
    self.generation = p_generation
    self.move_script = p_move_script

func get_category_label(move_category: Category) -> String:
    return Category.keys()[move_category].capitalize()
