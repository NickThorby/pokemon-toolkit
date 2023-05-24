extends MoveBattleData
class_name ActiveMove

# Ruined?

var ruined_atk # BattlePokemon
var ruined_def # BattlePokemon
var ruined_spa # BattlePokemon
var ruined_spd # BattlePokemon

#Active Move Data

var hit # int
var move_hit_data 
# Dictionary {
#   [target_slot_id: string]: 
#      { 
#           crit: bool, # Did this move crit against the target?
#           type_mod: number, # The type effectiveness of this move against the target
#           zBrokeProtect: bool # Is this move a Z-Move that broke the target's protection?
#      }
#}
var ability # AbilityBattleData
var allies # Array[BattlePokemon]
var aura_booster # BattlePokemon
var caused_crash_damage # bool
var force_status # String
var has_aura_break # bool
var has_bounced # bool

# Is the move called by Dancer? Used to prevent infinite Dancer recursion. 
var is_external # bool

var last_hit # bool
var magnitude # int
var negate_secondary # bool
var prankster_boosted # bool
var self_dropped # bool
var spread_hit # bool
var stab # float
var status_roll # String
var total_damage # int | false
var type_changer_boosted # Effect
var will_change_forme # bool

var is_z_or_max_powered # bool

func _init(p_active_move_data: Dictionary):
    super(p_active_move_data)
