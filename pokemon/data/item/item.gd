extends Dexable
class_name Item

# Information that shows in game. For battle data see the ItemBattleData class.

@export var name: String
@export var description: String

@export var battle_data: ItemBattleData

func _init(
    p_name: String = "",
    p_description: String = "",
    p_battle_data: Dictionary = {}
):
    name = p_name
    description = p_description
    battle_data = ItemBattleData.new(p_battle_data)