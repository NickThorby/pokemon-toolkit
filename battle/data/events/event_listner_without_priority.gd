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

func _init(
    p_effect: Effect = null,
    p_target: BattlePokemon = null,
    p_index = null,
    p_callback = null,
    p_state: EffectState = null,
    p_end = null,
    p_endCallArgs = null,
    p_effectHolder: Effect = null
):
    effect = p_effect
    target = p_target
    index = p_index
    callback = p_callback
    state = p_state
    end = p_end
    endCallArgs = p_endCallArgs
    effectHolder = p_effectHolder