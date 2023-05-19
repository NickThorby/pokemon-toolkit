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

var suppress_weather # bool
var condition # ConditionBattleData | null
var is_permanant # bool | null
var is_breakable # bool | null

func _init(p_ability_data):
    super(p_ability_data)
    p_ability_data = self

    self.fullname = "ability: %s" % self.name
    self.effect_type = BattleData.EffectType.ABILITY

    if p_ability_data.condition:
        self.condition = ConditionBattleData.new(p_ability_data.condition)
        
    self.is_permanant = p_ability_data.is_permanant
    self.is_breakable = p_ability_data.is_breakable
    self.suppress_weather = bool(p_ability_data.suppress_weather)
    

    if not self.gen:
        if self.num >= 268:
            self.gen = 9 
        elif self.num >= 234:
            self.gen = 8
        elif self.num >= 192:
            self.gen = 7
        elif self.num >= 165:
            self.gen = 6
        elif self.num >= 124:
            self.gen = 5
        elif self.num >= 77:
            self.gen = 4
        elif self.num >= 1:
            self.gen = 3