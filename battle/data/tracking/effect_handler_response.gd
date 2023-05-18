extends Object
class_name EHR

var response: BattleData.EventHandlerState
var value
var state: get = get_state

func _init(
    p_value
) -> void:
    if(p_value == "keep_going"):
        self.response = BattleData.EventHandlerState.KEEP_GOING
        self.value = null
    elif(p_value == "fail"):
        self.response = BattleData.EventHandlerState.FAIL_LOUDLY
        self.value = null
    elif(p_value == "fail_silently"):
        self.response = BattleData.EventHandlerState.FAIL_SILENTLY
        self.value = null
    else:
        self.response = BattleData.EventHandlerState.SET_VALUE
        self.value = p_value


func get_state() -> bool:
    if(self.response == BattleData.EventHandlerState.KEEP_GOING):
        return false
    elif(self.response == BattleData.EventHandlerState.FAIL_LOUDLY):
        return false
    elif(self.response == BattleData.EventHandlerState.FAIL_SILENTLY):
        return false
    else:
        return true