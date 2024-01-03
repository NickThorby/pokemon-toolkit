extends Effect
class_name Condition

var counter_max: int
var duration: int
var no_copy: bool
var affects_fainted: bool

var on_accuracy_priority: int
var on_damaging_hit_order: int
var on_after_move_secondary_priority: int
var on_after_move_secondary_self_priority: int
var on_after_move_self_priority: int
var on_after_set_status_priority: int
var on_any_base_power_priority: int
var on_any_invulnerability_priority: int
var on_any_modify_accuracy_priority: int
var on_any_faint_priority: int
var on_any_prepare_hit_priority: int
var on_ally_base_power_priority: int
var on_ally_modify_atk_priority: int
var on_ally_modify_sp_a_priority: int
var on_ally_modify_sp_d_priority: int
var on_attract_priority: int
var on_base_power_priority: int
var on_before_move_priority: int
var on_before_switch_out_priority: int
var on_change_boost_priority: int
var on_damage_priority: int
var on_drag_out_priority: int
var on_effectiveness_priority: int
var on_foe_base_power_priority: int
var on_foe_before_move_priority: int
var on_foe_modify_def_priority: int
var on_foe_modify_sp_d_priority: int
var on_foe_redirect_target_priority: int
var on_foe_trap_pokemon_priority: int
var on_fractional_priority_priority: int
var on_hit_priority: int
var on_invulnerability_priority: int
var on_modify_accuracy_priority: int
var on_modify_atk_priority: int
var on_modify_crit_ratio_priority: int
var on_modify_def_priority: int
var on_modify_move_priority: int
var on_modify_priority_priority: int
var on_modify_sp_a_priority: int
var on_modify_sp_d_priority: int
var on_modify_spe_priority: int
var on_modify_type_priority: int
var on_modify_weight_priority: int
var on_redirect_target_priority: int
var on_residual_order: int
var on_residual_priority: int
var on_residual_sub_order: int
var on_source_base_power_priority: int
var on_source_invulnerability_priority: int
var on_source_modify_accuracy_priority: int
var on_source_modify_atk_priority: int
var on_source_modify_damage_priority: int
var on_source_modify_sp_a_priority: int
var on_switch_in_priority: int
var on_trap_pokemon_priority: int
var on_try_eat_item_priority: int
var on_try_heal_priority: int
var on_try_hit_priority: int
var on_try_move_priority: int
var on_try_primary_hit_priority: int
var on_type_priority: int

func _init():
    return

func duration_callback(data: Dictionary):
    pass

func on_copy(data: Dictionary):
    pass

func on_end(data: Dictionary):
    pass

func on_restart(data: Dictionary):
    pass

func on_start(data: Dictionary):
    pass

func on_damaging_hit(data: Dictionary):
    pass

func on_emergency_exit(data: Dictionary):
    pass

func on_after_each_boost(data: Dictionary):
    pass

func on_after_hit(data: Dictionary):
    pass

func on_after_mega(data: Dictionary):
    pass

func on_after_set_status(data: Dictionary):
    pass

func on_after_sub_damage(data: Dictionary):
    pass

func on_after_switch_in_self(data: Dictionary):
    pass

func on_after_terastallization(data: Dictionary):
    pass

func on_after_use_item(data: Dictionary):
    pass

func on_after_take_item(data: Dictionary):
    pass

func on_after_boost(data: Dictionary):
    pass

func on_after_faint(data: Dictionary):
    pass

func on_after_move_secondary_self(data: Dictionary):
    pass

func on_after_move_secondary(data: Dictionary):
    pass

func on_after_move(data: Dictionary):
    pass

func on_after_move_self(data: Dictionary):
    pass

func on_attract(data: Dictionary):
    pass

func on_accuracy(data: Dictionary):
    pass

func on_base_power(data: Dictionary):
    pass

func on_before_faint(data: Dictionary):
    pass

func on_before_move(data: Dictionary):
    pass

func on_before_switch_in(data: Dictionary):
    pass

func on_before_switch_out(data: Dictionary):
    pass

func on_before_turn(data: Dictionary):
    pass

func on_change_boost(data: Dictionary):
    pass

func on_try_boost(data: Dictionary):
    pass

func on_charge_move(data: Dictionary):
    pass

func on_critical_hit(data: Dictionary):
    pass

func on_damage(data: Dictionary):
    pass

func on_deduct_pp(data: Dictionary):
    pass

func on_disable_move(data: Dictionary):
    pass

func on_drag_out(data: Dictionary):
    pass

func on_eat_item(data: Dictionary):
    pass

func on_effectiveness(data: Dictionary):
    pass

func on_entry_hazard(data: Dictionary):
    pass

func on_faint(data: Dictionary):
    pass

func on_flinch(data: Dictionary):
    pass

func on_fractional_priority(data: Dictionary):
    pass

func on_hit(data: Dictionary):
    pass

func on_immunity(data: Dictionary):
    pass

func on_lock_move(data: Dictionary):
    pass

func on_maybe_trap_pokemon(data: Dictionary):
    pass

func on_modify_accuracy(data: Dictionary):
    pass

func on_modify_atk(data: Dictionary):
    pass

func on_modify_boost(data: Dictionary):
    pass

func on_modify_crit_ratio(data: Dictionary):
    pass

func on_modify_damage(data: Dictionary):
    pass

func on_modify_def(data: Dictionary):
    pass

func on_modify_move(data: Dictionary):
    pass

func on_modify_priority(data: Dictionary):
    pass

func on_modify_secondaries(data: Dictionary):
    pass

func on_modify_type(data: Dictionary):
    pass

func on_modify_target(data: Dictionary):
    pass

func on_modify_sp_a(data: Dictionary):
    pass

func on_modify_sp_d(data: Dictionary):
    pass

func on_modify_spe(data: Dictionary):
    pass

func on_modify_weight(data: Dictionary):
    pass

func on_move_aborted(data: Dictionary):
    pass

func on_negate_immunity(data: Dictionary):
    pass

func on_override_action(data: Dictionary):
    pass

func on_prepare_hit(data: Dictionary):
    pass

func on_redirect_target(data: Dictionary):
    pass

func on_residual(data: Dictionary):
    pass

func on_set_ability(data: Dictionary):
    pass

func on_set_status(data: Dictionary):
    pass

func on_set_weather(data: Dictionary):
    pass

func on_stall_move(data: Dictionary):
    pass

func on_switch_in(data: Dictionary):
    pass

func on_switch_out(data: Dictionary):
    pass

func on_swap(data: Dictionary):
    pass

func on_take_item(data: Dictionary):
    pass

func on_weather_change(data: Dictionary):
    pass

func on_terrain_change(data: Dictionary):
    pass

func on_trap_pokemon(data: Dictionary):
    pass

func on_try_add_volatile(data: Dictionary):
    pass

func on_try_eat_item(data: Dictionary):
    pass

func on_try_heal(data: Dictionary):
    pass

func on_try_hit(data: Dictionary):
    pass

func on_try_hit_field(data: Dictionary):
    pass

func on_try_hit_side(data: Dictionary):
    pass

func on_invulnerability(data: Dictionary):
    pass

func on_try_move(data: Dictionary):
    pass

func on_try_primary_hit(data: Dictionary):
    pass

func on_type(data: Dictionary):
    pass

func on_use_item(data: Dictionary):
    pass

func on_update(data: Dictionary):
    pass

func on_weather(data: Dictionary):
    pass

func on_weather_modify_damage(data: Dictionary):
    pass

func on_modify_damage_phase1(data: Dictionary):
    pass

func on_modify_damage_phase2(data: Dictionary):
    pass