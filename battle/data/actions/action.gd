extends ActionChoice
class_name Action

var order
var priority
var fractional_priority
var speed
var pokemon: BattlePokemon
var target: BattlePokemon
var target_loc
var original_target: BattlePokemon 
var dragger: BattlePokemon
var move_id 
var move: MoveBattleData 
var mega 
var zmove 
var max_move 
var source_effect: Effect
var event
var index

func _init(p_action_data): 
    super(p_action_data)