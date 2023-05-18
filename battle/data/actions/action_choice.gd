extends Object
class_name ActionChoice

var choice: BattleData.ActionChoice

func _init(p_data):
    Utils.assign_properties(p_data, self)
