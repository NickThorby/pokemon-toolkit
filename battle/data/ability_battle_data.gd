extends Effect
class_name AbilityBattleData

#Ability Event Methods

var on_check_show # (this: Battle, pokemon: BattlePokemon) -> void
var on_end # (this: Battle, target: BattlePokemon | Side | Field) -> void
var on_pre_start # (this: Battle, pokemon: BattlePokemon) -> void
var on_start # (this: Battle, target: BattlePokemon | Side | Field) -> void

# Pokemon Event Methods

var on_ally_damaging_hit # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_ally_after_each_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon) -> void
var on_ally_after_hit # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_after_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_ally_after_sub_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_ally_after_switch_in_self # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_after_use_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_ally_after_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_ally_after_faint # (this: Battle, length: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_ally_after_move_secondary_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_after_move_secondary # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_ally_after_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_after_move_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_attract # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> void
var on_ally_accuracy # (this: Battle, accuracy: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_base_power # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_before_faint # (this: Battle, pokemon: BattlePokemon, effect: Effect) -> void
var on_ally_before_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_before_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_before_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_try_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_ally_charge_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_critical_hit # ((this: Battle, pokemon: BattlePokemon, source: null, move: ActiveMove) -> EHR | void) | bool
var on_ally_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> EHR | void
var on_ally_deduct_pp # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> EHR | void
var on_ally_disable_move # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_drag_out # (this: Battle, pokemon: BattlePokemon, source?: BattlePokemon, move?: ActiveMove) -> void
var on_ally_eat_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_ally_effectiveness # (this: Battle, typeMod: number, target: BattlePokemon | null, type: string, move: ActiveMove) -> EHR | void
var on_ally_faint # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_ally_flinch # ((this: Battle, pokemon: BattlePokemon) -> EHR | void) | bool
var on_ally_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void)
var on_ally_immunity # (this: Battle, type: string, pokemon: BattlePokemon) -> void
var on_ally_lock_move # string | ((this: Battle, pokemon: BattlePokemon) -> EHR | void)
var on_ally_maybe_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_modify_accuracy # (this: Battle, relayVar: EHR, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_atk # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_boost # (this: Battle, boosts: Dictionary, pokemon: BattlePokemon) -> EHR | void
var on_ally_modify_crit_ratio # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_damage # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_def # (this: Battle, relayVar: EHR, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_move # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon | null) -> void
var on_ally_modify_priority # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_secondaries # (this: Battle, secondaries: Array[SecondaryEffect], target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_ally_modify_spa # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_spd # (this: Battle, relayVar: EHR, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_spe # (this: Battle, spe: number, pokemon: BattlePokemon) -> EHR | void
var on_ally_modify_type # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon) -> void
var on_ally_modify_target # (this: Battle, relayVar: EHR, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_modify_weight # (this: Battle, weighthg: number, pokemon: BattlePokemon) -> EHR | void
var on_ally_move_aborted # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_ally_negate_immunity # ((this: Battle, pokemon: BattlePokemon, type: string) -> EHR | void) | bool
var on_ally_override_action # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_prepare_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void)
var on_ally_redirect_target# (this: Battle, target: BattlePokemon, source: BattlePokemon, source2: Effect, move: ActiveMove) -> Pokemon | void
var on_ally_residual # (this: Battle, target: BattlePokemon | Side, source: BattlePokemon, effect: Effect) -> void
var on_ally_set_ability # (this: Battle, ability: string, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> EHR | void
var on_ally_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> EHR | void
var on_ally_set_weather # (this: Battle, target: BattlePokemon, source: BattlePokemon, weather: BattleCondition) -> EHR | void
var on_ally_side_condition_start # (this: Battle, target: BattlePokemon, source: BattlePokemon, sideCondition: BattleCondition) -> void
var on_ally_stall_move # (this: Battle, pokemon: BattlePokemon) -> EHR | void
var on_ally_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_take_item # ((this: Battle, item: Item, pokemon: BattlePokemon, source: BattlePokemon, move?: ActiveMove) -> EHR | void) | bool
var on_ally_terrain # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_try_add_volatile # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> EHR | void
var on_ally_try_eat_item # bool | ((this: Battle, item: Item, pokemon: BattlePokemon) -> EHR | void)
var on_ally_try_heal # (((this: Battle, relayVar: EHR, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> EHR | void) |((this: Battle, pokemon: BattlePokemon) -> EHR | void) | bool)
var on_ally_try_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void)
var on_ally_try_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void)
var on_ally_try_hit_side # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void)
var on_ally_invulnerability # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void)
var on_ally_try_move # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void)
var on_ally_try_primary_hit # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_type # (this: Battle, types: string[], pokemon: BattlePokemon) -> EHR | void
var on_ally_weather_modify_damage # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_damage_phase1 # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void
var on_ally_modify_damage_phase2 # (this: Battle, relayVar: EHR, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> EHR | void 