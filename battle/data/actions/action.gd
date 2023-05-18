extends Object
class_name Action

var choice: BattleData.ActionChoice
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

func _init(
    p_choice: BattleData.ActionChoice = BattleData.ActionChoice.NONE,
    p_order = null,
    p_priority = null,
    p_fractional_priority = null,
    p_speed = null,
    p_pokemon: BattlePokemon = null,
    p_target: BattlePokemon = null,
    p_target_loc = null,
    p_original_target: BattlePokemon = null,
    p_dragger: BattlePokemon = null,
    p_move_id = null,
    p_move: MoveBattleData = null,
    p_mega = null,
    p_zmove = null,
    p_max_move = null,
    p_source_effect: Effect = null,
    p_event = null,
    p_index = null
): 
    choice = p_choice
    order = p_order
    priority = p_priority
    fractional_priority = p_fractional_priority
    speed = p_speed
    pokemon = p_pokemon
    target = p_target
    target_loc = p_target_loc
    original_target = p_original_target
    dragger = p_dragger
    move_id = p_move_id
    move = p_move
    mega = p_mega
    zmove = p_zmove
    max_move = p_max_move
    source_effect = p_source_effect
    event = p_event
    index = p_index