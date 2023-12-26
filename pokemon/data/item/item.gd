extends Dexable
class_name Item

# Information that shows in game. For battle data see the ItemBattleData class.

@export var name: String
@export var description: String

func _init(
    p_name: String = "",
    p_description: String = ""
):
    name = p_name
    description = p_description