extends Effect
class_name ConditionBattleData

var counter_max # number | null
var on_copy # (this: Battle, pokemon: BattlePokemon) -> void
var on_restart # (this: Battle, target: BattlePokemon, source: BattlePokemon, source_effect: Effect) -> RelayVar | void

func _init(p_condition_data):
    super(p_condition_data)
    p_condition_data = self

    self.counter_max = p_condition_data.counter_max
    if [BattleData.EffectType.WEATHER, BattleData.EffectType.STATUS].has(p_condition_data.effect_type):
        self.effect_type = p_condition_data.effect_type
    else:
        self.effect_type = BattleData.EffectType.CONDITION