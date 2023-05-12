extends Resource
class_name PokedexColor

@export var name: String
@export var color: Color

func _init(p_name: String = "", p_color: Color = Color(1, 1, 1)):
    self.name = p_name
    self.color = p_color