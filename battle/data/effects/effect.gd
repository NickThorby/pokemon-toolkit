extends Resource
class_name Effect

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

# Ability Event Methods

var on_check_show # (this: Battle, pokemon: BattlePokemon) -> void
var on_end # (this: Battle, target: BattlePokemon | Side | Field) -> void
var on_pre_start # (this: Battle, pokemon: BattlePokemon) -> void
var on_start # (this: Battle, target: BattlePokemon | Side | Field) -> void

# Move Event Methods

var base_power_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | null
var before_move_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon | null, move: ActiveMove) -> RelayVar | void
var before_turn_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon) -> void
var damage_callback # (this: Battle, pokemon: BattlePokemon, target: BattlePokemon) -> RelayVar
var priority_charge_callback # (this: Battle, pokemon: BattlePokemon) -> void
var on_hit_field # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_hit_side # (this: Battle, side: Side, source: BattlePokemon, move: ActiveMove) -> RelayVar | void
var on_move_fail # (this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> void
var on_try # bool | ((this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_try_immunity # bool | ((this: Battle, target: BattlePokemon, source: BattlePokemon, move: ActiveMove) -> RelayVar | void)
var on_use_move_message # (this: Battle, source: BattlePokemon, target: BattlePokemon, move: ActiveMove) -> void

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

# ID. This will be a lowercase version of the name with all the
# non-alphanumeric characters removed. So, for instance, "Mr. Mime"
# becomes "mrmime", and "Basculin-Blue-Striped" becomes
# "basculinbluestriped".
var id # String

# Name. Currently does not support Unicode letters, so "Flabébé"
# is "Flabebe" and "Nidoran♀" is "Nidoran-F".
var name # String

# Full name. Prefixes the name with the effect type. For instance,
# Leftovers would be "item: Leftovers", confusion the status
# condition would be "confusion", etc.
var fullname # String
var effect_type # BattleData.EffectType

# Does it exist? For historical reasons, when you use an accessor
# for an effect that doesn't exist, you get a dummy effect that
# doesn't do anything, and this field set to false.
var exists # bool

# Dex number? For a Pokemon, this is the National Dex number. For
# other effects, this is often an internal ID (e.g. a move
# number). Not all effects have numbers, this will be 0 if it
# doesn't. Nonstandard effects (e.g. CAP effects) will have
# negative numbers.
var num # int

# The generation of Pokemon game this was INTRODUCED (NOT
# necessarily the current gen being simulated.) Not all effects
# track generation; this will be 0 if not known.
var gen # int

# A shortened form of the description of this effect.
# Not all effects have this.
var short_description # String

# The full description for this effect.
var description # String

# Is this item/move/ability/pokemon nonstandard? Specified for effects
# that have no use in standard formats: made-up pokemon (CAP),
# glitches (MissingNo etc), Pokestar pokemon, etc.
var is_non_standard # BattleData.NonStandard | null

# The duration of the condition - only for pure conditions
var duration # int
var duration_callback # (this: Battle, target: BattlePokemon, source: BattlePokemon, effect: Effect | null) -> int

# Whether or not the condition is ignored by Baton Pass - only for pure conditions.
var no_copy # bool

# Whether or not the condition affects fainted Pokemon.
var affects_fainted # bool
var infiltrates # bool

# Moves only: what status does it set?
var status # String

# Moves only: what weather does it set?
var weather # String
var source_effect # String

func _init(p_effect_data):
	self.exists = true
	Utils.assign_properties(p_effect_data, self)

	self.name = p_effect_data.name.strip_edges()

	if p_effect_data.has("real_move"):
		self.id = Utils.to_id(p_effect_data.real_move)
	else:
		self.id = Utils.to_id(self.name)

	if p_effect_data.has("fullname"):
		self.fullname = p_effect_data.fullname
	else:
		self.fullname = self.name

	if p_effect_data.has("effect_type"):
		self.effect_type = p_effect_data.effect_type
	else:
		self.effect_type = BattleData.EffectType.CONDITION

	self.exists = bool(self.exists && self.id)

	if p_effect_data.has("num"):
		self.num = p_effect_data.num
	else:
		self.num = 0

	if p_effect_data.has("gen"):
		self.gen = p_effect_data.gen
	else:
		self.gen = 0

	if p_effect_data.has("short_description"):
		self.short_description = p_effect_data.short_description
	else:
		self.short_description = ""

	if p_effect_data.has("description"):
		self.description = p_effect_data.description
	else:
		self.description = ""

	if p_effect_data.has("is_non_standard"):
		self.is_non_standard = p_effect_data.is_non_standard
	else:
		self.is_non_standard = null

	if p_effect_data.has("duration"):
		self.duration = p_effect_data.duration
	else:
		self.duration = null

	if p_effect_data.has("duration_callback"):
		self.duration_callback = p_effect_data.duration_callback
	else:
		self.duration_callback = null

	if p_effect_data.has("no_copy"):
		self.no_copy = bool(p_effect_data.no_copy)
	else:
		self.no_copy = false

	if p_effect_data.has("affects_fainted"):
		self.affects_fainted = bool(p_effect_data.affects_fainted)
	else:
		self.affects_fainted = false

	if p_effect_data.has("infiltrates"):
		self.infiltrates = p_effect_data.infiltrates
	else:
		self.infiltrates = null

	if p_effect_data.has("status"):
		self.status = p_effect_data.status
	else:
		self.status = null
	
	if p_effect_data.has("weather"):
		self.weather = p_effect_data.weather
	else:
		self.weather = null

	if p_effect_data.has("source_effect"):
		self.source_effect = p_effect_data.source_effect
	else:
		self.source_effect = ""

func _to_string():
	return self.name
