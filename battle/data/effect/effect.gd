extends Resource
class_name Effect

@export var name: String
@export var fullname: String
@export var effect_type: String
@export var short_description: String
@export var description: String
@export var source_effect: Effect

func _init(
    p_name: String = "",
    p_fullname: String = "",
    p_effect_type: String = "",
    p_short_description: String = "",
    p_description: String = "",
    p_source_effect: Effect = null
):
    self.name = p_name
    self.fullname = p_fullname
    self.effect_type = p_effect_type
    self.short_description = p_short_description
    self.description = p_description
    self.source_effect = p_source_effect