extends Resource
class_name PokemonStat

@export var name: String
@export var short_name: String
@export var description: String

@export var is_boostable: bool
@export var is_permanent: bool

func _init(
    p_name: String,
    p_short_name: String,
    p_description: String,
    p_is_boostable: bool,
    p_is_permanent: bool
)-> void:
    self.name = p_name
    self.short_name = p_short_name
    self.description = p_description
    self.is_boostable = p_is_boostable
    self.is_permanent = p_is_permanent