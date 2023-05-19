extends Object
class_name HitEffect

var on_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) => RelayVar | void)
var boosts # BoostTable
var status # String
var volatile_status # String

var side_condition # String
var slot_condition # String

var field_effect # String
var terrain # String
var weather # String

func _init(p_hit_effect_data):
    Utils.assign_properties(p_hit_effect_data, self)