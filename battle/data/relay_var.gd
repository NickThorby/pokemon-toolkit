extends Object
class_name RelayVar

var response: BattleData.EventHandlerState
var value: get = get_value
var state: get = get_state
var priority: get = get_priority

func _init(p_value = null):
	if typeof(p_value) == TYPE_NIL:
		self.response = BattleData.EventHandlerState.KEEP_GOING
		self.value = null
	elif typeof(p_value) == TYPE_BOOL:
		if not p_value:
			self.response = BattleData.EventHandlerState.FAIL_LOUDLY
			self.value = false
		else:
			self.response = BattleData.EventHandlerState.SET_VALUE
			self.value = p_value
	if typeof(p_value) == TYPE_STRING:
		if(p_value == "suppress"):
			self.response = BattleData.EventHandlerState.FAIL_SILENTLY
			self.value = null
		else: 
			self.response = BattleData.EventHandlerState.SET_VALUE
			self.value = p_value
	else:
		self.response = BattleData.EventHandlerState.SET_VALUE
		self.value = p_value

func get_value():
	if self.response == BattleData.EventHandlerState.SET_VALUE:
		return value
	elif self.response == BattleData.EventHandlerState.FAIL_LOUDLY:
		return false
	elif self.response == BattleData.EventHandlerState.FAIL_SILENTLY:
		return "suppress"
	elif self.response == BattleData.EventHandlerState.KEEP_GOING:
		return null
	else:
		return null

func get_state() -> bool:
	if self.response == BattleData.EventHandlerState.KEEP_GOING:
		return false
	elif self.response == BattleData.EventHandlerState.FAIL_LOUDLY:
		return false
	elif self.response == BattleData.EventHandlerState.FAIL_SILENTLY:
		return false
	elif self.response == BattleData.EventHandlerState.SET_VALUE and typeof(self.value) == TYPE_STRING and self.value == "":
		return false
	elif self.response == BattleData.EventHandlerState.SET_VALUE and not bool(self.value):
		return false
	else:
		return true

func get_priority() -> int:
	if self.response == BattleData.EventHandlerState.KEEP_GOING:
		return 0
	elif self.response == BattleData.EventHandlerState.SET_VALUE and typeof(self.value) == TYPE_STRING:
		return 1
	elif self.response == BattleData.EventHandlerState.FAIL_SILENTLY or typeof(self.value) == TYPE_OBJECT or typeof(self.value) == TYPE_ARRAY or typeof(self.value) == TYPE_DICTIONARY:
		return 2
	elif self.response == BattleData.EventHandlerState.FAIL_LOUDLY or typeof(self.value) == TYPE_BOOL:
		return 3
	elif self.response == BattleData.EventHandlerState.SET_VALUE and (typeof(self.value) == TYPE_INT or typeof(self.value) == TYPE_FLOAT):
		return 4
	else:
		return 0
