extends Object
class_name ChosenAction

var choice: BattleData.Choice
var pokemon: BattlePokemon # The Pokemon doing the action
var target_loc: int # Relative location of the target to pokemon (move action only)
var move_id: String # A move to use (move action only)
var move: ActiveMove # The active move corresponding to moveid (move action only)
var target: BattlePokemon # The target of the action
var index: int # The chosen index in Team Preview
var side: BattleSide # The action's side
var mega # True if megaing or ultra bursting
var z_move # If Z-moving, the name of the Z-move
var max_move # If Dynamaxed, the name of the Max move
var terastallize # If terastallizing, the Pokemon's tera type
var priority: int # Priority of the action

func _init(p_chosen_action_data): 
    Utils.assign_properties(p_chosen_action_data, self)