extends Object
class_name Action

var choice: BattleData.ActionChoice
var priority # priority of the action (lower first)
var speed
var pokemon: BattlePokemon

func _init(
    p_choice: BattleData.ActionChoice = BattleData.ActionChoice.NONE,
    p_priority = null,
    p_speed = null,
    p_pokemon: BattlePokemon = null
):
    choice = p_choice
    priority = p_priority
    speed = p_speed
    pokemon = p_pokemon