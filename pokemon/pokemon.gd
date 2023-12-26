extends Resource
class_name Pokemon

@export var max_hp: int
@export var current_hp: int

@export var form: PokemonForm
@export var level: int
@export var ivs: StatTable
@export var evs: StatTable

@export var nickname: String
@export var nature: Nature
@export var gender: PokemonData.Gender
@export var happiness: int # 0-255
@export var shiny: bool

@export var hidden_power_type: PokemonType
@export var hidden_power_power: int # gen 2-5 only
@export var dynamax_level: int # gen 8 only
@export var gigantimax_factor: bool # gen 8 only
@export var tera_type: PokemonType # gen 9 only

@export var status: NonVolatileStatus

@export var pokeball: Item

var held_item: Item
var personality_value: int
var encryption_constant: int

func _init(
    p_form: PokemonForm, 
    p_level: int, 
    p_ivs: StatTable, 
    p_nature: Nature, 
    p_gender: PokemonData.Gender):
        var prng = PRNG.new(Global.dex.settings.prng_seed)
        self.form = p_form
        self.level = p_level
        self.ivs = p_ivs
        self.evs = StatTable.new({"hp": 0, "atk": 0, "def": 0, "spa": 0, "spd": 0, "spe": 0}, Global.dex.settings.max_evs_per_stat, 0, Global.dex.settings.max_evs_per_pokemon)
        self.nickname = ""
        self.nature = p_nature
        self.gender = p_gender
        self.happiness = p_form.base_happiness
        self.max_hp = PokemonData.calc_max_hp(self.form.base_stats.hp, self.level, self.ivs.hp, self.evs.hp)
        self.current_hp = self.max_hp
        self.hidden_power_type = PokemonData.calc_hidden_power_type(self.ivs)
        self.hidden_power_power = PokemonData.calc_hidden_power_power(self.ivs)
        self.dynamax_level = 0
        self.gigantimax_factor = false
        if(!self.form.secondary_type):
            self.tera_type = self.form.primary_type
        else:
            var tera_type_int = prng.next(0, 2)
            if(tera_type_int == 0):
                self.tera_type = self.form.primary_type
            else:
                self.tera_type = self.form.secondary_type
        self.status = null
        self.pokeball = null
        self.held_item = null
        self.personality_value = prng.next(0, 4294967296)
        self.encryption_constant = prng.next(0, 4294967296)
        self.shiny = PokemonData.calc_shininess(self.personality_value, self.ivs)

