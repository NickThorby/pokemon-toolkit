extends Object
class_name EventListenerWithoutPriority

var effect: Effect;
var target: BattlePokemon;
var index;
var callback;
var state: EffectState
var end;
var endCallArgs;
var effectHolder: Effect

func _init(p_event_listener_data):
    Utils.assign_properties(p_event_listener_data, self)
    