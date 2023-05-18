extends Object
class_name Effect

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

    self.no_copy = bool(p_effect_data.no_copy)
    self.affects_fainted = bool(p_effect_data.affects_fainted)

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