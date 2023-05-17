extends Object
class_name RelayVar

var state = BattleData.RelayVarState
var value

func _init(
    p_state = BattleData.RelayVarState.KEEP_GOING,
    p_value = 0
) -> void:
    state = p_state
    value = p_value