extends Action
class_name TeamAction

var index # New index

func _init(
    p_priority = null,
    p_pokemon: BattlePokemon = null,
    p_index = null
): 
    super(BattleData.ActionChoice.TEAM, p_priority, 1, p_pokemon)
    index = p_index
