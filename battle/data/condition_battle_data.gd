extends Effect
class_name ConditionBattleData

# Common Event Methods

var on_damaging_hit # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_emergency_exit # (this: Battle, pokemon: BattlePokemon) -> void
var on_after_each_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_after_hit # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_after_mega # (this: Battle, pokemon: BattlePokemon) -> void
var on_after_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_after_sub_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_after_switch_in_self # (this: Battle, pokemon: BattlePokemon) -> void
var on_after_terastallization # (this: Battle, pokemon: BattlePokemon) -> void
var on_after_use_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_after_take_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_after_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_after_faint # (this: Battle, length: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_after_move_secondary_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_after_move_secondary # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_after_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_after_move_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_attract # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> void
var on_accuracy # (this: Battle, accuracy: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_base_power # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_before_faint # (this: Battle, pokemon: BattlePokemon, effect: Effect) -> void
var on_before_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_before_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_before_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_before_turn # (this: Battle, pokemon: BattlePokemon) -> void
var on_change_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_try_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_charge_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_critical_hit # ((this: Battle, pokemon: BattlePokemon, source: null, move: ActiveMove) -> RelayVar | void) | bool
var on_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_deduct_pp # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> RelayVar | void
var on_disable_move # (this: Battle, pokemon: BattlePokemon) -> void
var on_drag_out # (this: Battle, pokemon: BattlePokemon, source?: BattlePokemon, move?: ActiveMove) -> void
var on_eat_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_effectiveness # (this: Battle, typeMod: number, target: BattlePokemon | null, type: string, move: ActiveMove) -> RelayVar | void
var on_entry_hazard # (this: Battle, pokemon: BattlePokemon) -> void
var on_faint # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_flinch # ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool
var on_fractional_priority # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void | -0.1
var on_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_immunity # (this: Battle, type: string, pokemon: BattlePokemon) -> void
var on_lock_move # string | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void)
var on_maybe_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_modify_accuracy # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_atk # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_boost # (this: Battle, boosts: Dictionary, pokemon: BattlePokemon) -> RelayVar | void
var on_modify_crit_ratio # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_def # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_move # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon | null) -> void
var on_modify_priority # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_secondaries # (this: Battle, secondaries: Array[SecondaryEffect], target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_modify_type # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon) -> void
var on_modify_target # (this: Battle, relayVar: RelayVar, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_modify_spa # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_spd # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_spe # (this: Battle, spe: number, pokemon: BattlePokemon) -> RelayVar | void
var on_modify_weight # (this: Battle, weighthg: number, pokemon: BattlePokemon) -> RelayVar | void
var on_move_aborted # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_negate_immunity # ((this: Battle, pokemon: BattlePokemon, type: string) -> RelayVar | void) | bool
var on_override_action # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_prepare_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_redirect_target # (this: Battle, target: BattlePokemon, source: BattlePokemon, source2: Effect, move: ActiveMove) -> Pokemon | void
var on_residual # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_set_ability # (this: Battle, ability: string, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> null | void
var on_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_set_weather # (this: Battle, target: BattlePokemon, source: BattlePokemon, weather: BattleCondition) -> RelayVar | void
var on_stall_move # (this: Battle, pokemon: BattlePokemon) -> RelayVar | void
var on_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_swap # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> void
var on_take_item # ((this: Battle, item: Item, pokemon: BattlePokemon, source: BattlePokemon, move?: ActiveMove) -> RelayVar | void) | bool
var on_weather_change # (this: Battle, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> void
var on_terrain_change # (this: Battle, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> void
var on_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_try_add_volatile # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> RelayVar | void
var on_try_eat_item # bool | ((this: Battle, item: Item, pokemon: BattlePokemon) -> RelayVar | void)
var on_try_heal # (((this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void) |((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool)
var on_try_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_hit_side # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_invulnerability # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_move # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_primary_hit # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_type # (this: Battle, types: string[], pokemon: BattlePokemon) -> RelayVar | void
var on_use_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_update # (this: Battle, pokemon: BattlePokemon) -> void
var on_weather # (this: Battle, target: BattlePokemon, source: null, effect: BattleCondition) -> void
var on_weather_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_damage_phase1 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_modify_damage_phase2 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_damaging_hit # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_foe_after_each_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon) -> void
var on_foe_after_hit # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_foe_after_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_foe_after_sub_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_foe_after_switch_in_self # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_after_use_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_foe_after_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_foe_after_faint # (this: Battle, length: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_foe_after_move_secondary_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_foe_after_move_secondary # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_foe_after_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_foe_after_move_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_foe_attract # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> void
var on_foe_accuracy # (this: Battle, accuracy: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_base_power # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_before_faint # (this: Battle, pokemon: BattlePokemon, effect: Effect) -> void
var on_foe_before_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_foe_before_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_before_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_try_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_foe_charge_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_foe_critical_hit # ((this: Battle, pokemon: BattlePokemon, source: null, move: ActiveMove) -> RelayVar | void) | bool
var on_foe_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_foe_deduct_pp # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> RelayVar | void
var on_foe_disable_move # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_drag_out # (this: Battle, pokemon: BattlePokemon, source?: BattlePokemon, move?: ActiveMove) -> void
var on_foe_eat_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_foe_effectiveness # (this: Battle, typeMod: number, target: BattlePokemon | null, type: string, move: ActiveMove) -> RelayVar | void
var on_foe_faint # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_foe_flinch # ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool
var on_foe_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_foe_immunity # (this: Battle, type: string, pokemon: BattlePokemon) -> void
var on_foe_lock_move # string | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void)
var on_foe_maybe_trap_pokemon # (this: Battle, pokemon: BattlePokemon, source?: BattlePokemon) -> void
var on_foe_modify_accuracy # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_atk # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_boost # (this: Battle, boosts: Dictionary, pokemon: BattlePokemon) -> RelayVar | void
var on_foe_modify_crit_ratio # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_def # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_move # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon | null) -> void
var on_foe_modify_priority # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_secondaries # (this: Battle, secondaries: Array[SecondaryEffect], target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_foe_modify_spa # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_spd # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_spe # (this: Battle, spe: number, pokemon: BattlePokemon) -> RelayVar | void
var on_foe_modify_type # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon) -> void
var on_foe_modify_target # (this: Battle, relayVar: RelayVar, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_foe_modify_weight # (this: Battle, weighthg: number, pokemon: BattlePokemon) -> RelayVar | void
var on_foe_move_aborted # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_foe_negate_immunity # ((this: Battle, pokemon: BattlePokemon, type: string) -> RelayVar | void) | bool
var on_foe_override_action # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_prepare_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_foe_redirect_target # (this: Battle, target: BattlePokemon, source: BattlePokemon, source2: Effect, move: ActiveMove) -> Pokemon | void
var on_foe_residual # (this: Battle, target: BattlePokemon & Side, source: BattlePokemon, effect: Effect) -> void
var on_foe_set_ability # (this: Battle, ability: string, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_foe_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_foe_set_weather # (this: Battle, target: BattlePokemon, source: BattlePokemon, weather: BattleCondition) -> RelayVar | void
var on_foe_stall_move # (this: Battle, pokemon: BattlePokemon) -> RelayVar | void
var on_foe_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_take_item # ((this: Battle, item: Item, pokemon: BattlePokemon, source: BattlePokemon, move?: ActiveMove) -> RelayVar | void) | bool
var on_foe_terrain # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_foe_try_add_volatile # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> RelayVar | void
var on_foe_try_eat_item # bool | ((this: Battle, item: Item, pokemon: BattlePokemon) -> RelayVar | void)
var on_foe_try_heal # (((this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void) | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool)
var on_foe_try_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_foe_try_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_foe_try_hit_side # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_foe_invulnerability # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_foe_try_move # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_foe_try_primary_hit # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_type # (this: Battle, types: string[], pokemon: BattlePokemon) -> RelayVar | void
var on_foe_weather_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_damage_phase1 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_foe_modify_damage_phase2 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_damaging_hit # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_source_after_each_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon) -> void
var on_source_after_hit # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_source_after_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_source_after_sub_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_source_after_switch_in_self # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_after_use_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_source_after_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_source_after_faint # (this: Battle, length: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_source_after_move_secondary_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_source_after_move_secondary # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_source_after_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_source_after_move_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_source_attract # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> void
var on_source_accuracy # (this: Battle, accuracy: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_base_power # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_before_faint # (this: Battle, pokemon: BattlePokemon, effect: Effect) -> void
var on_source_before_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_source_before_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_before_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_try_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_source_charge_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_source_critical_hit # ((this: Battle, pokemon: BattlePokemon, source: null, move: ActiveMove) -> RelayVar | void) | bool
var on_source_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_source_deduct_pp # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> RelayVar | void
var on_source_disable_move # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_drag_out # (this: Battle, pokemon: BattlePokemon, source?: BattlePokemon, move?: ActiveMove) -> void
var on_source_eat_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_source_effectiveness # (this: Battle, typeMod: number, target: BattlePokemon | null, type: string, move: ActiveMove) -> RelayVar | void
var on_source_faint # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_source_flinch # ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool
var on_source_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_source_immunity # (this: Battle, type: string, pokemon: BattlePokemon) -> void
var on_source_lock_move # string | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void)
var on_source_maybe_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_modify_accuracy # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_atk # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_boost # (this: Battle, boosts: Dictionary, pokemon: BattlePokemon) -> RelayVar | void
var on_source_modify_crit_ratio # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_def # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_move # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon | null) -> void
var on_source_modify_priority # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_secondaries # (this: Battle, secondaries: Array[SecondaryEffect], target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_source_modify_spa # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_spd # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_spe # (this: Battle, spe: number, pokemon: BattlePokemon) -> RelayVar | void
var on_source_modify_type # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon) -> void
var on_source_modify_target # (this: Battle, relayVar: RelayVar, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_source_modify_weight # (this: Battle, weighthg: number, pokemon: BattlePokemon) -> RelayVar | void
var on_source_move_aborted # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_source_negate_immunity # ((this: Battle, pokemon: BattlePokemon, type: string) -> RelayVar | void) | bool
var on_source_override_action # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_prepare_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_source_redirect_target # (this: Battle, target: BattlePokemon, source: BattlePokemon, source2: Effect, move: ActiveMove) -> Pokemon | void
var on_source_residual # (this: Battle, target: BattlePokemon & Side, source: BattlePokemon, effect: Effect) -> void
var on_source_set_ability # (this: Battle, ability: string, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_source_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_source_set_weather # (this: Battle, target: BattlePokemon, source: BattlePokemon, weather: BattleCondition) -> RelayVar | void
var on_source_stall_move # (this: Battle, pokemon: BattlePokemon) -> RelayVar | void
var on_source_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_take_item # ((this: Battle, item: Item, pokemon: BattlePokemon, source: BattlePokemon, move?: ActiveMove) -> RelayVar | void) | bool
var on_source_terrain # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_source_try_add_volatile # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> RelayVar | void
var on_source_try_eat_item # bool | ((this: Battle, item: Item, pokemon: BattlePokemon) -> RelayVar | void)
var on_source_try_heal # (((this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void) | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool)
var on_source_try_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_source_try_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_source_try_hit_side # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_source_invulnerability # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_source_try_move # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_source_try_primary_hit # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_type # (this: Battle, types: string[], pokemon: BattlePokemon) -> RelayVar | void
var on_source_weather_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_damage_phase1 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_source_modify_damage_phase2 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_damaging_hit # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_any_after_each_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon) -> void
var on_any_after_hit # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_any_after_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_any_after_sub_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_any_after_switch_in_self # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_after_use_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_any_after_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_any_after_faint # (this: Battle, length: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_any_after_move_secondary_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_any_after_move_secondary # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_any_after_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_any_after_move_self # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_any_attract # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> void
var on_any_accuracy # (this: Battle, accuracy: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_base_power # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_before_faint # (this: Battle, pokemon: BattlePokemon, effect: Effect) -> void
var on_any_before_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_any_before_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_before_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_try_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_any_charge_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_any_critical_hit # ((this: Battle, pokemon: BattlePokemon, source: null, move: ActiveMove) -> RelayVar | void) | bool
var on_any_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_any_deduct_pp # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> RelayVar | void
var on_any_disable_move # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_drag_out # (this: Battle, pokemon: BattlePokemon, source?: BattlePokemon, move?: ActiveMove) -> void
var on_any_eat_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_any_effectiveness # (this: Battle, typeMod: number, target: BattlePokemon | null, type: string, move: ActiveMove) -> RelayVar | void
var on_any_faint # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_any_flinch # ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool
var on_any_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_any_immunity # (this: Battle, type: string, pokemon: BattlePokemon) -> void
var on_any_lock_move # string | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void)
var on_any_maybe_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_modify_accuracy # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_atk # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_boost # (this: Battle, boosts: Dictionary, pokemon: BattlePokemon) -> RelayVar | void
var on_any_modify_crit_ratio # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_def # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_move # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon | null) -> void
var on_any_modify_priority # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_secondaries # (this: Battle, secondaries: Array[SecondaryEffect], target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_any_modify_spa # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_spd # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_spe # (this: Battle, spe: number, pokemon: BattlePokemon) -> RelayVar | void
var on_any_modify_type # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon) -> void
var on_any_modify_target # (this: Battle, relayVar: RelayVar, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_any_modify_weight # (this: Battle, weighthg: number, pokemon: BattlePokemon) -> RelayVar | void
var on_any_move_aborted # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_any_negate_immunity # ((this: Battle, pokemon: BattlePokemon, type: string) -> RelayVar | void) | bool
var on_any_override_action # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_prepare_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_any_pseudo_weather_change # (this: Battle, target: BattlePokemon, source: BattlePokemon, pseudoWeather: BattleCondition) -> void
var on_any_redirect_target # (this: Battle, target: BattlePokemon, source: BattlePokemon, source2: Effect, move: ActiveMove) -> Pokemon | void
var on_any_residual # (this: Battle, target: BattlePokemon & Side, source: BattlePokemon, effect: Effect) -> void
var on_any_set_ability # (this: Battle, ability: string, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_any_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_any_set_weather # (this: Battle, target: BattlePokemon, source: BattlePokemon, weather: BattleCondition) -> RelayVar | void
var on_any_stall_move # (this: Battle, pokemon: BattlePokemon) -> RelayVar | void
var on_any_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_take_item # ((this: Battle, item: Item, pokemon: BattlePokemon, source: BattlePokemon, move?: ActiveMove) -> RelayVar | void) | bool
var on_any_terrain # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_any_try_add_volatile # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> RelayVar | void
var on_any_try_eat_item # bool | ((this: Battle, item: Item, pokemon: BattlePokemon) -> RelayVar | void)
var on_any_try_heal # (((this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void) | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool)
var on_any_try_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_any_try_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_any_try_hit_side # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_any_invulnerability # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_any_try_move # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_any_try_primary_hit # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_type # (this: Battle, types: string[], pokemon: BattlePokemon) -> RelayVar | void
var on_any_weather_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_damage_phase1 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_any_modify_damage_phase2 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void

#Priorities

var on_accuracy_priority # number
var on_damaging_hit_order # number
var on_after_move_secondary_priority # number
var on_after_move_secondary_self_priority # number
var on_after_move_self_priority # number
var on_after_set_status_priority # number
var on_any_base_power_priority # number
var on_any_invulnerability_priority # number
var on_any_modify_accuracy_priority # number
var on_any_faint_priority # number
var on_any_prepare_hit_priority # number
var on_ally_base_power_priority # number
var on_ally_modify_atk_priority # number
var on_ally_modify_spa_priority # number
var on_ally_modify_spd_priority # number
var on_attract_priority # number
var on_base_power_priority # number
var on_before_move_priority  # number
var on_before_switch_out_priority# number
var on_change_boost_priority # number
var on_damage_priority # number
var on_drag_out_priority # number
var on_effectiveness_priority # number
var on_foe_base_power_priority # number
var on_foe_before_move_priority # number
var on_foe_modify_def_priority # number
var on_foe_modify_spd_priority # number
var on_foe_redirect_target_priority # number
var on_foe_trap_pokemon_priority # number
var on_fractional_priority_priority # number
var on_hit_priority # number
var on_invulnerability_priority # number
var on_modify_accuracy_priority # number
var on_modify_atk_priority # number
var on_modify_crit_ratio_priority # number
var on_modify_def_priority # number
var on_modify_move_priority # number
var on_modify_priority_priority # number
var on_modify_spa_priority # number
var on_modify_spd_priority # number
var on_modify_spe_priority # number
var on_modify_type_priority # number
var on_modify_weight_priority # number
var on_redirect_target_priority # number
var on_residual_order # number
var on_residual_priority # number
var on_residual_sub_order # number
var on_source_base_power_priority # number
var on_source_invulnerability_priority # number
var on_source_modify_accuracy_priority # number
var on_source_modify_atk_priority # number
var on_source_modify_damage_priority # number
var on_source_modify_spa_priority # number
var on_switch_in_priority # number
var on_trap_pokemon_priority # number
var on_try_eat_item_priority # number
var on_try_heal_priority # number
var on_try_hit_priority # number
var on_try_move_priority # number
var on_try_primary_hit_priority # number
var on_type_priority # number

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
var on_ally_accuracy # (this: Battle, accuracy: number, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_base_power # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_before_faint # (this: Battle, pokemon: BattlePokemon, effect: Effect) -> void
var on_ally_before_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_before_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_before_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_try_boost # (this: Battle, boost: Dictionary {BattleDex.BoostStat: int}, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_ally_charge_move # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_critical_hit # ((this: Battle, pokemon: BattlePokemon, source: null, move: ActiveMove) -> RelayVar | void) | bool
var on_ally_damage # (this: Battle, damage: number, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_ally_deduct_pp # (this: Battle, target: BattlePokemon, source: BattlePokemon) -> RelayVar | void
var on_ally_disable_move # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_drag_out # (this: Battle, pokemon: BattlePokemon, source?: BattlePokemon, move?: ActiveMove) -> void
var on_ally_eat_item # (this: Battle, item: Item, pokemon: BattlePokemon) -> void
var on_ally_effectiveness # (this: Battle, typeMod: number, target: BattlePokemon | null, type: string, move: ActiveMove) -> RelayVar | void
var on_ally_faint # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> void
var on_ally_flinch # ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool
var on_ally_hit # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_ally_immunity # (this: Battle, type: string, pokemon: BattlePokemon) -> void
var on_ally_lock_move # string | ((this: Battle, pokemon: BattlePokemon) -> RelayVar | void)
var on_ally_maybe_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_modify_accuracy # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_atk # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_boost # (this: Battle, boosts: Dictionary, pokemon: BattlePokemon) -> RelayVar | void
var on_ally_modify_crit_ratio # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_def # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_move # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon | null) -> void
var on_ally_modify_priority # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_secondaries # (this: Battle, secondaries: Array[SecondaryEffect], target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_ally_modify_spa # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_spd # (this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_spe # (this: Battle, spe: number, pokemon: BattlePokemon) -> RelayVar | void
var on_ally_modify_type # (this: Battle, move: ActiveMove, pokemon: BattlePokemon, target: BattlePokemon) -> void
var on_ally_modify_target # (this: Battle, relayVar: RelayVar, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void
var on_ally_modify_weight # (this: Battle, weighthg: number, pokemon: BattlePokemon) -> RelayVar | void
var on_ally_move_aborted # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_ally_negate_immunity # ((this: Battle, pokemon: BattlePokemon, type: string) -> RelayVar | void) | bool
var on_ally_override_action # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_prepare_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_ally_redirect_target# (this: Battle, target: BattlePokemon, source: BattlePokemon, source2: Effect, move: ActiveMove) -> Pokemon | void
var on_ally_residual # (this: Battle, target: BattlePokemon | Side, source: BattlePokemon, effect: Effect) -> void
var on_ally_set_ability # (this: Battle, ability: string, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_ally_set_status # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void
var on_ally_set_weather # (this: Battle, target: BattlePokemon, source: BattlePokemon, weather: BattleCondition) -> RelayVar | void
var on_ally_side_condition_start # (this: Battle, target: BattlePokemon, source: BattlePokemon, sideCondition: BattleCondition) -> void
var on_ally_stall_move # (this: Battle, pokemon: BattlePokemon) -> RelayVar | void
var on_ally_switch_in # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_switch_out # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_take_item # ((this: Battle, item: Item, pokemon: BattlePokemon, source: BattlePokemon, move?: ActiveMove) -> RelayVar | void) | bool
var on_ally_terrain # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_trap_pokemon # (this: Battle, pokemon: BattlePokemon) -> void
var on_ally_try_add_volatile # (this: Battle, status: BattleCondition, target: BattlePokemon, source: BattlePokemon, sourceEffect: Effect) -> RelayVar | void
var on_ally_try_eat_item # bool | ((this: Battle, item: Item, pokemon: BattlePokemon) -> RelayVar | void)
var on_ally_try_heal # (((this: Battle, relayVar: RelayVar, target: BattlePokemon, source: BattlePokemon, effect: Effect) -> RelayVar | void) |((this: Battle, pokemon: BattlePokemon) -> RelayVar | void) | bool)
var on_ally_try_hit # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_ally_try_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_ally_try_hit_side # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_ally_invulnerability # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_ally_try_move # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_ally_try_primary_hit # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_type # (this: Battle, types: string[], pokemon: BattlePokemon) -> RelayVar | void
var on_ally_weather_modify_damage # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_damage_phase1 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_ally_modify_damage_phase2 # (this: Battle, relayVar: RelayVar, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void 

# Side Event Methods

var on_side_start # (this: Battle, target: Side, source: BattlePokemon, sourceEffect: Effect) -> void
var on_side_restart # (this: Battle, target: Side, source: BattlePokemon, sourceEffect: Effect) -> void
var on_side_residual # (this: Battle, target: Side, source: BattlePokemon, effect: Effect) -> void
var on_side_end # (this: Battle, target: Side) -> void
var on_side_residual_order # number
var on_side_residual_priority # number
var on_side_residual_sub_order # number

#Field Event Methods

var on_field_start # (this: Battle, target: Field, source: BattlePokemon, sourceEffect: Effect) -> void
var on_field_restart # (this: Battle, target: Field, source: BattlePokemon, sourceEffect: Effect) -> void
var on_field_residual # (this: Battle, target: Field, source: BattlePokemon, effect: Effect) -> void
var on_field_end # (this: Battle, target: Field) -> void
var on_field_residual_order # number
var on_field_residual_priority # number
var on_field_residual_sub_order # number

var counter_max # number | null
var on_copy # (this: Battle, pokemon: BattlePokemon) -> void
var on_end # (this: Battle, target: BattlePokemon) -> void
var on_restart # (this: Battle, target: BattlePokemon, source: BattlePokemon, source_effect: Effect) -> RelayVar | void
var on_start # (this: Battle, target: BattlePokemon, source: BattlePokemon, source_effect: Effect) -> RelayVar | void

func _init(p_condition_data):
    super(p_condition_data)
    p_condition_data = self

    self.counter_max = p_condition_data.counter_max
    if [BattleData.EffectType.WEATHER, BattleData.EffectType.STATUS].has(p_condition_data.effect_type):
        self.effect_type = p_condition_data.effect_type
    else:
        self.effect_type = BattleData.EffectType.CONDITION