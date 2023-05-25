extends Effect
class_name MoveBattleData

# Hit Effect

var boosts # BoostTable
var volatile_status # String

var side_condition # String
var slot_condition # String

var field_effect # String
var terrain # String

# Move Data

var condition # ConditionBattleData
var base_power # int
var accuracy # true | int
var pp # int
var category # PokemonData.MoveCategory
var type # PokemonType
var priority # int
var target # BattleData.MoveTarget
var flags # BattleData.MoveFlag
var real_move # String

var damage # RelayVar
var contest_type # PokemonData.ContestType
var no_pp_boosts # bool

# Z-Move Data

# ID of the Z-Crystal that calls the move.
# `true` for Z-Powered status moves like Z-Encore.
var is_z # bool | String
var z_move # Dictionary {base_power: int, effect: String, boost: BoostTable}

# Max Move Data

# `true` for Max moves like Max Airstream. If its a G-Max moves, this is
# the species ID of the Gigantamax Pokemon that can use this G-Max move.
var is_max # bool | String
var max_move # Dictionary {base_power: int}

# Hit Effects

var ohko # bool | String
var thaws_target # bool
var heal # RelayVar
var force_switch # bool
var self_switch # 'copyvolatile' | 'shedtail' | bool
var self_boost # Dictionary {boosts: BoostTable}
var selfdestruct # 'always' | 'ifHit' | bool
var breaks_protect # bool

# Note that this is only "true" recoil. Other self-damage, like Struggle,
# crash (High Jump Kick), Mind Blown, Life Orb, and even Substitute and
# Healing Wish, are sometimes called "recoil" by the community, but don't
# count as "real" recoil.
var recoil # Array[number]
var drain # Array[number]
var mind_blown_recoil # bool
var steals_boosts # bool
var struggle_recoil # bool
var secondary # SecondaryEffect | null
var secondaries # Array[SecondaryEffect] | null
var on_self # Dictionary | null
var has_sheer_force # bool

# Hit Effect Modifiers

var always_hit # bool
var base_move_type # String
var base_power_modifier # number
var crit_modifier # number
var crit_ratio # int

# Pokemon for the attack stat. Ability and Item damage modifiers still come from the real attacker.
var override_offensive_pokemon # BattleData.StatOverride

# Physical moves use attack stat modifiers, special moves use special attack stat modifiers.
var override_offensive_stat # PokemonData.PokemonStat

# Pokemon for the defense stat. Ability and Item damage modifiers still come from the real defender.
var override_defensive_pokemon # BattleData.StatOverride

# uses modifiers that match the new stat
var override_defensive_stat # PokemonData.PokemonStat

var force_stab # bool
var ignore_ability # bool
var ignore_accuracy # bool
var ignore_defensive # bool
var ignore_evasion # bool
var ignore_immunity # bool | Dictionary {String: bool}
var ignore_negative_offensive # bool
var ignore_offensive # bool
var ignore_positive_defensive # bool
var ignore_positive_evasion # bool
var multi_accuracy # bool
var multihit # int | Array[int]
var multhit_type # String
var no_damage_variance # bool
var non_ghost_target # String
var pressure_target # String
var spread_modifier # number
var sleep_usable # bool

# Will change target if current target is unavailable. (Dragon Darts)
var smart_target # bool

#Tracks the original target through Ally Switch and other switch-out-and-back-in
#situations, rather than just targeting a slot. (Stalwart, Snipe Shot)
var tracks_target # bool
var will_crit # bool

# Mechanics Flags

var has_crash_damage # bool
var is_confusion_self_hit # bool
var no_metronome # Array[String]
var noSketch # bool
var stalling_move # bool
var base_move # String

func _init(p_move_data):
    super(p_move_data)
    p_move_data = self
    
    self.fullname = "move: %s" % self.name
    self.effect_type = BattleData.EffectType.MOVE
    self.type = Global.Dex.getType(p_move_data.type)
    self.target = p_move_data.target
    self.base_power = int(p_move_data.base_power)
    self.accuracy = p_move_data.accuracy

    if p_move_data.crit_ratio:
        self.crit_ratio = int(p_move_data.crit_ratio)
    else:
        self.crit_ratio = 1

    if(p_move_data.base_move_type):
        self.base_move_type = Global.Dex.getType(p_move_data.base_move_type)
    else:
        self.base_move_type = self.type

    if p_move_data.secondary:
        self.secondary = SecondaryEffect.new(p_move_data.secondary)
    else:
        self.secondary = null

    if p_move_data.secondaries:
        self.secondaries = []
        for i_secondary in p_move_data.secondaries:
            self.secondaries.append(SecondaryEffect.new(i_secondary))
    elif self.secondary:
        self.secondaries = [self.secondary]
    else:
        self.secondaries = null

    self.has_sheer_force = bool(p_move_data.has_sheer_force and not self.secondaries)
   
    if p_move_data.priority:
        self.priority = int(p_move_data.priority)
    else:
        self.priority = 0

    self.category = p_move_data.category

    if p_move_data.override_offensive_stat:
        self.override_offensive_stat = p_move_data.override_offensive_stat
    else:
        self.override_offensive_stat = null

    if p_move_data.override_offensive_pokemon:
        self.override_offensive_pokemon = p_move_data.override_offensive_pokemon
    else:
        self.override_offensive_pokemon = null

    if p_move_data.override_defensive_stat:
        self.override_defensive_stat = p_move_data.override_defensive_stat
    else:
        self.override_defensive_stat = null

    if p_move_data.override_defensive_pokemon:
        self.override_defensive_pokemon = p_move_data.override_defensive_pokemon
    else:
        self.override_defensive_pokemon = null

    self.ignore_negative_offensive = bool(p_move_data.ignore_negative_offensive)
    self.ignore_positive_defensive = bool(p_move_data.ignore_positive_defensive)
    self.ignore_offensive = bool(p_move_data.ignore_offensive)
    self.ignore_defensive = bool(p_move_data.ignore_defensive)

    if p_move_data.ignore_immunity:
        self.ignore_immunity = p_move_data.ignore_immunity
    elif self.category == PokemonData.MoveCategory.STATUS:
        self.ignore_immunity = true
    else:
        self.ignore_immunity = false

    self.pp = int(p_move_data.pp)
    self.no_pp_boosts = bool(p_move_data.no_pp_boosts)

    if p_move_data.is_z:
        self.is_z = p_move_data.is_z
    else:
        self.is_z = false

    if p_move_data.is_max:
        self.is_max = p_move_data.is_max
    else:
        self.is_max = false

    if p_move_data.flags:
        self.flags = p_move_data.flags
    else:
        self.flags = {}

    if typeof(p_move_data.self_switch) == TYPE_STRING:
        Utils.to_id(p_move_data.self_switch)
    elif p_move_data.self_switch:
        self.self_switch = p_move_data.self_switch
    else:
        self.self_switch = null

    if p_move_data.pressure_target:
        self.pressure_target = p_move_data.pressure_target
    else:
        self.pressure_target = ""

    if p_move_data.non_ghost_target:
        self.non_ghost_target = p_move_data.non_ghost_target
    else:
        self.non_ghost_target = ""

    if p_move_data.ignore_ability:
        self.ignore_ability = p_move_data.ignore_ability
    else:
        self.ignore_ability = false

    self.damage = p_move_data.damage

    if p_move_data.spread_hit:
        self.spread_hit = p_move_data.spread_hit
    else:
        self.spread_hit = false

    self.force_stab = bool(p_move_data.force_stab)
    self.no_sketch = bool(p_move_data.no_sketch)
    
    if p_move_data.stab:
        self.stab = p_move_data.stab
    else:
        self.stab = null

    if typeof(p_move_data.volatile_status) == TYPE_STRING:
        Utils.to_id(p_move_data.volatile_status)
    else:
        self.volatile_status = null

        if self.category != PokemonData.MoveCategory.STATUS and !self.max_move and self.id != 'struggle':
            self.max_move = {"base_power": 1}
            if(self.is_max or self.is_z):
                pass
                # already set to 1
            elif !self.base_power:
                self.max_move.base_power = 100
            elif (["Fighting", "Poison"].has(self.type.name)):
                if self.base_power >= 150:
                    self.max_move.base_power = 100
                elif self.base_power >= 110:
                    self.max_move.base_power = 95
                elif self.base_power >= 75:
                    self.max_move.base_power = 90
                elif self.base_power >= 65:
                    self.max_move.base_power = 85
                elif self.base_power >= 55:
                    self.max_move.base_power = 80
                elif self.base_power >= 45:
                    self.max_move.base_power = 75
                else:
                    self.max_move.base_power = 70
            else:
                if self.base_power >= 150:
                    self.max_move.base_power = 150
                elif self.base_power >= 110:
                    self.max_move.base_power = 140
                elif self.base_power >= 75:
                    self.max_move.base_power = 130
                elif self.base_power >= 65:
                    self.max_move.base_power = 120
                elif self.base_power >= 55:
                    self.max_move.base_power = 110
                elif self.base_power >= 45:
                    self.max_move.base_power = 100
                else:
                    self.max_move.base_power = 90
    
        if self.category != PokemonData.MoveCategory.STATUS and !self.z_move and !self.is_z and !self.is_max and self.id != "struggle":
            var temp_base_power = self.base_power
            self.z_move = {}
            if typeof(self.multihit) == TYPE_ARRAY:
                temp_base_power = temp_base_power * 3
            if !temp_base_power:
                self.z_move.base_power = 100
            elif temp_base_power >= 140:
                self.z_move.base_power = 200
            elif temp_base_power >= 130:
                self.z_move.base_power = 195
            elif temp_base_power >= 120:
                self.z_move.base_power = 190
            elif temp_base_power >= 110:
                self.z_move.base_power = 185
            elif temp_base_power >= 100:
                self.z_move.base_power = 180
            elif temp_base_power >= 90:
                self.z_move.base_power = 175
            elif temp_base_power >= 80:
                self.z_move.base_power = 160
            elif temp_base_power >= 70:
                self.z_move.base_power = 140
            elif temp_base_power >= 60:
                self.z_move.base_power = 120
            else:
                self.z_move.base_power = 100
    
        if !self.gen:
            if self.num >= 827 and !self.is_max:
                self.gen = 9
            elif self.num >= 743:
                self.gen = 8
            elif self.num >= 622:
                self.gen = 7
            elif self.num >= 560:
                self.gen = 6
            elif self.num >= 468:
                self.gen = 5
            elif self.num >= 355:
                self.gen = 4
            elif self.num >= 252:
                self.gen = 3
            elif self.num >= 166:
                self.gen = 2
            elif self.num >= 1:
                self.gen = 1
