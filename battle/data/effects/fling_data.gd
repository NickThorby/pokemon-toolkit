extends Object
class_name FlingData

var base_power: int
var status
var volatile_status
var effect # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) => EHR | void)

func _init(p_fling_data):
    Utils.assign_properties(p_fling_data, self)