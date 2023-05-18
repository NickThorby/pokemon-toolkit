extends Action
class_name SwitchAction

var order: int; # 3 | 6 | 103;
var target: BattlePokemon # Pokemon to switch to
var sourceEffect: Effect # Effect that called the switch (eg. U-turn)

func _init(
    p_choice: BattleData.ActionChoice = BattleData.ActionChoice.SWITCH,
    p_order: int = 6,
    p_priority = null,
    p_speed = null,
    p_pokemon: BattlePokemon = null,
    p_target: BattlePokemon = null,
    p_source_effect: Effect = null,
):
    super(p_choice,p_priority, p_speed, p_pokemon)
    choice = p_choice
    order = p_order
    target = p_target
    sourceEffect = p_source_effect