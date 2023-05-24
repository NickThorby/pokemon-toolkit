extends Effect
class_name ItemBattleData

# A Move-like object depicting what happens when Fling is used on
# this item.
var fling # FlingData

# If this is a Drive: The type it turns Techno Blast into.
# null, if not a Drive.
var on_drive # String

# If this is a Memory: The type it turns Multi-Attack into.
# null, if not a Memory.
var on_memory # String

# If this is a mega stone: The name (e.g. Charizard-Mega-X) of the
# forme this allows transformation into.
# null, if not a mega stone.
var mega_stone # String

# If this is a mega stone: The name (e.g. Charizard) of the
# forme this allows transformation from.
# null, if not a mega stone.
var mega_evolves # String

# If this is a Z crystal: true if the Z Crystal is generic
# (e.g. Firium Z). If species-specific, the name
# (e.g. Inferno Overdrive) of the Z Move this crystal allows
# the use of.
# null, if not a Z crystal.
var z_move # true | String

# If this is a generic Z crystal: The type (e.g. Fire) of the
# Z Move this crystal allows the use of (e.g. Fire)
# null, if not a generic Z crystal
var z_move_type # String

# If this is a species-specific Z crystal: The name
# (e.g. Play Rough) of the move this crystal requires its
# holder to know to use its Z move.
# null, if not a species-specific Z crystal
var z_move_from # String

# If this is a species-specific Z crystal: An array of the
# species of Pokemon that can use this crystal's Z move.
# Note that these are the full names, e.g. 'Mimikyu-Busted'
# null, if not a species-specific Z crystal
var item_user # String[]

# Is this item a Berry?
var is_berry # bool

# Whether or not this item ignores the Klutz ability.
var ignore_klutz # bool

# The type the holder will change into if it is an Arceus.
var on_plate # String

# Is this item a Gem?
var is_gem # bool

# Is this item a Pokeball?
var is_pokeball # bool

var condition # BattleCondition
var forced_forme # String
var is_choice # bool
var natural_gift # { base_power: number, type: String }
var boosts # BoostTable | false

var on_eat # ((this: Battle, pokemon: BattlePokemon) -> void) | RelayVar
var on_primal # (this: Battle, pokemon: BattlePokemon) -> void

func _init(p_item_data):
    super(p_item_data)
    p_item_data = self

    self.fullname = "item: %s" % p_item_data.name
    self.effect_type = BattleData.EffectType.ITEM
    
    if p_item_data.fling:
        self.fling = FlingData.new(p_item_data.fling)
    else:
        self.fling = null

    if p_item_data.on_drive:
        self.on_drive = p_item_data.on_drive
    else:
        self.on_drive = null

    if p_item_data.on_memory:
        self.on_memory = p_item_data.on_memory
    else:
        self.on_memory = null

    if p_item_data.mega_stone:
        self.mega_stone = p_item_data.mega_stone
    else:
        self.mega_stone = null

    if p_item_data.mega_evolves:
        self.mega_evolves = p_item_data.mega_evolves
    else:
        self.mega_evolves = null

    if p_item_data.z_move:
        self.z_move = p_item_data.z_move
    else:
        self.z_move = null

    if p_item_data.z_move_type:
        self.z_move_type = p_item_data.z_move_type
    else:
        self.z_move_type = null

    if p_item_data.z_move_from:
        self.z_move_from = p_item_data.z_move_from
    else:
        self.z_move_from = null

    if p_item_data.item_user:
        self.item_user = p_item_data.item_user
    else:
        self.item_user = null

    self.is_berry = bool(p_item_data.is_berry)
    self.ignore_klutz = bool(p_item_data.ignore_klutz)

    if p_item_data.on_plate:
        self.on_plate = p_item_data.on_plate
    else:
        self.on_plate = null

    self.is_gem = bool(p_item_data.is_gem)
    self.is_pokeball = bool(p_item_data.is_pokeball)

    if !self.gen:
        if self.num >= 1124:
            self.gen = 9
        elif self.num >= 927:
            self.gen = 8
        elif self.num >= 689:
            self.gen = 7
        elif self.num >= 577:
            self.gen = 6
        elif self.num >= 537:
            self.gen = 5
        elif self.num >= 377:
            self.gen = 4
        else:
            self.gen = 3
    
    if self.is_berry:
        self.fling = {"base_power": 10}
    if self.id.ends_with("plate"):
        self.fling = {"base_power": 90}
    if self.on_drive:
        self.fling = {"base_power": 70}
    if self.mega_stone:
        self.fling = {"base_power": 80}
    if self.on_memory:
        self.fling = {"base_power": 50}