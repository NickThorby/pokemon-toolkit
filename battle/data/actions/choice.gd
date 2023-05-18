extends Object
class_name Choice

var choice: BattleData.BattleChoice
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

func _init(
    p_choice: BattleData.BattleChoice = BattleData.BattleChoice.PASS_TURN,
    p_pokemon: BattlePokemon = null,
    p_target_loc: int = -1,
    p_move_id: String = "",
    p_move: ActiveMove = null,
    p_target: BattlePokemon = null,
    p_index: int = -1,
    p_side: BattleSide = null,
    p_mega = null,
    p_z_move = null,
    p_max_move = null,
    p_terastallize = null,
    p_priority: int = 0
): 
    choice = p_choice
    pokemon = p_pokemon
    target_loc = p_target_loc
    move_id = p_move_id
    move = p_move
    target = p_target
    index = p_index
    side = p_side
    mega = p_mega
    z_move = p_z_move
    max_move = p_max_move
    terastallize = p_terastallize
    priority = p_priority