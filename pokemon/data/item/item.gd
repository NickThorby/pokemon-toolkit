extends Dexable
class_name Item

# Information that shows in game. For battle data see the ItemBattleData class.

@export var name: String
@export var description: String

func _init(
    p_name: String = "",
    p_description: String = ""
):
    self.id = Utils.to_id(p_name)
    self.name = p_name
    self.description = p_description