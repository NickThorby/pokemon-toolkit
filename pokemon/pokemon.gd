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

func _init(
    p_form: PokemonForm, 
    p_level: int, 
    p_ivs: StatTable, 
    p_nature: Nature, 
    p_gender: PokemonData.Gender):
        self.form = p_form
        self.level = p_level
        self.ivs = p_ivs
        #self.evs = StatTable()
        self.nickname = ""
        self.nature = p_nature
        self.gender = p_gender
        self.happiness = p_form.base_happiness
        self.max_hp = PokemonData.calc_max_hp(self.form.base_stats.get_stat(PokemonData.PokemonStat.HP), self.level, self.ivs.get_stat(PokemonData.PokemonStat.HP), self.evs.get_stat(PokemonData.PokemonStat.HP), 9)

