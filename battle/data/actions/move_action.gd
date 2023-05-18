extends Action
class_name MoveAction

var order: int # 3 | 5 | 200 | 201 | 199 | 106
var fractional_priority # Fractional priority of the action (lower first)
var target_loc # Location of the target, relative to pokemon's side
var original_target: BattlePokemon # Original target pokemon, for target-tracking moves
var move_id # A move to use (move action only)
var move: MoveBattleData # A move to use (move action only)
var mega # True if megaing or ultra bursting
var zmove # If Z-moving, the name of the Z-move
var max_move # If Dynamaxed, the name of the Max move
var source_effect: Effect # Effect that called the move (eg Instruct) if any

func _init(
    p_choice: BattleData.ActionChoice = BattleData.ActionChoice.MOVE,
    p_order: int = 200,
    p_priority = null,
    p_fractional_priority = null,
    p_speed = null,
    p_pokemon: BattlePokemon = null,
    p_target_loc = null,
    p_original_target: BattlePokemon = null,
    p_move_id = null,
    p_move: MoveBattleData = null,
    p_mega = null,
    p_zmove = null,
    p_max_move = null,
    p_source_effect: Effect = null
): 
    super(p_choice, p_priority, p_speed, p_pokemon)
    choice = p_choice
    order = p_order
    fractional_priority = p_fractional_priority
    target_loc = p_target_loc
    original_target = p_original_target
    move_id = p_move_id
    move = p_move
    mega = p_mega
    zmove = p_zmove
    max_move = p_max_move
    source_effect = p_source_effect