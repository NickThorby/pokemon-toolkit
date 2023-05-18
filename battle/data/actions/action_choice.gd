extends Object
class_name ActionChoice

var choice: BattleData.ActionChoice

func _init(p_action_choice_data):
    Utils.assign_properties(p_action_choice_data, self)
