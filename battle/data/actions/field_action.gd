extends Action
class_name FieldAction

func _init(
    p_choice: BattleData.ActionChoice = BattleData.ActionChoice.PASS_TURN,
    p_priority = null,
):
    super(p_choice, p_priority, 1, null)
