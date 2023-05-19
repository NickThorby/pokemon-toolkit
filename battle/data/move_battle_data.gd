extends Effect
class_name MoveBattleData

# Move Event Methods

var base_power_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | null
var before_move_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon | null, move: ActiveMove) -> RelayVar | void
var before_turn_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon) -> void
var damage_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon) -> RelayVar
var priority_charge_callback # (this: Battle, pokemon: BattlePokemon) -> void
var on_disable_move # (this: Battle, pokemon: BattlePokemon) -> void
var on_after_hit # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_after_sub_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_after_move_secondary_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_after_move_secondary # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_after_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_damage_priority # number
var on_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_base_power # (this: Battle, relayVar: number, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_effectiveness # (this: Battle, typeMod: number, target: BattlePokemon | null, type: string, move: ActiveMove) -> RelayVar | void
var on_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_hit_side # (this: Battle, side: Side, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_move # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon | null) -> void
var on_modify_priority # (this: Battle, relayVar: number, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_move_fail # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_modify_type # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon) -> void
var on_modify_target # (this: Battle, relayVar: {target: BattlePokemon}, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_prepare_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_hit_side # (this: Battle, side: Side, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_try_immunity # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_move # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_use_move_message # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void

# Hit Effect

var boosts # BoostTable
var volatile_status # String

var side_condition # String
var slot_condition # String

var field_effect # String
var terrain # String