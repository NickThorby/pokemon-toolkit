extends Action
class_name PokemonAction

var dragger: BattlePokemon # On `runSwitch` only: the pokemon forcing this pokemon to switch in
var event # On `event` only: the event to run

func _init(
    p_choice: BattleData.ActionChoice = BattleData.ActionChoice.SHIFT,
    p_priority = null,
    p_speed = null,
    p_pokemon: BattlePokemon = null,
    p_dragger: BattlePokemon = null,
    p_event = null
):
    super(p_choice, p_priority, p_speed, p_pokemon)
    choice = p_choice
    dragger = p_dragger
    event = p_event