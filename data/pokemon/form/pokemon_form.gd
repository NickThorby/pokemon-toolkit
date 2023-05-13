extends Resource
class_name PokemonForm

enum EvolutionTrigger {
        LEVEL_UP, 
        TRADE, 
        USE_ITEM,
        LOCATION, 
        SPIN,
}
enum EvolutionCondition {
        MIN_LEVEL,
        MIN_FRIENDSHIP,
        HELD_ITEM,
        IS_GENDER,
        TYPE_IN_PARTY,
        POKEMON_IN_PARTY,
        RELATIVE_STATS,
        CONTEST_CONDITION,
        PERSONALITY_VALUE,
        ENCRYPTION_CONSTANT,
        TIME_OF_DAY,
        OVERWORLD_WEATHER,
        OVERWORLD_MOON_PHASE,
        KNOWS_MOVE,
        KNOWS_MOVE_TYPE,
        MOVE_USED_NUMBER_OF_TIMES,
        CRITICAL_HITS_LANDED,
        TAKEN_RECOIL_DAMAGE,
        TAKEN_DAMAGE_WITHOUT_FAINTING,
        DEFEATED_POKEMON_HOLDING_ITEM,
        STEPS_WALKED_OUTSIDE_OF_BALL,
        TRADED_FOR_SPECIES,
        UPSIDE_DOWN,
        ITEMS_IN_BAG,
        SPIN_LENGTH,
        SPIN_DIRECTION,
        LOCATION,
        REGION,
}

enum AbilityType {
        PRIMARY,
        SECONDARY,
        HIDDEN,
}
enum PokemonType {
        PRIMARY, 
        SECONDARY
}
enum PokemonEggGroup {
        PRIMARY,
        SECONDARY,
}

@export var form_index: int
@export var species: PokemonSpecies
@export var form_name: String
@export var display_name: String
@export var category: String
@export var generation: int

@export_multiline var pokedex_entries: Dictionary # {text: String, region: String}

@export var evolves_from: PokemonSpecies
@export var evolves_into: Array[Dictionary] # {species: PokemonSpecies, trigger: EvolutionTrigger, condition: EvolutionCondition, condition_value: see_docs}

@export var base_hp: int
@export var base_attack: int
@export var base_defense: int
@export var base_special_attack: int
@export var base_special_defense: int
@export var base_speed: int
@export var capture_rate: int
@export var base_friendship: int

@export var ev_yield_hp: int
@export var ev_yield_attack: int
@export var ev_yield_defense: int
@export var ev_yield_special_attack: int
@export var ev_yield_special_defense: int
@export var ev_yield_speed: int
@export var base_experience_yield: int

@export var primary_type: PokemonType
@export var secondary_type: PokemonType

@export var primary_ability: PokemonAbility
@export var secondary_ability: PokemonAbility
@export var hidden_ability: PokemonAbility

@export var learnset: Dictionary # {level_up: Array[Dictionary], tm: Array[Dictionary], egg_move: Array[Dictionary], tutor: Array[Move], previous_generation: Array[Dictionary]}

@export var egg_groups: Array[PokemonEggGroup]
@export var egg_steps: int
@export var growth_rate: PokemonGrowthRate
@export var percentage_male: float

@export var height: float
@export var weight: float

@export var pokedex_color: PokedexColor

@export var wild_held_items: Array[Dictionary] # {item: Item, chance: float}

@export var icon_sprite: Texture
@export var icon_sprite_shiny: Texture
@export var front_sprite: Texture
@export var front_sprite_shiny: Texture
@export var back_sprite: Texture
@export var back_sprite_shiny: Texture
@export var overworld_sprite: Texture
@export var overworld_sprite_shiny: Texture
@export var egg_icon: Texture
@export var egg_sprite: Texture

    
func _init(
        p_form_index: int = 0,
        p_species: PokemonSpecies = null,
        p_form_name: String = "",
        p_display_name: String = "",
        p_category: String = "",
        p_generation: int = 0,
        p_pokedex_entries: Dictionary = {},
        p_evolves_from: PokemonSpecies = null,
        p_evolves_into: Array[Dictionary] = [],
        p_base_hp: int = 0,
        p_base_attack: int = 0,
        p_base_defense: int = 0,
        p_base_special_attack: int = 0,
        p_base_special_defense: int = 0,
        p_base_speed: int = 0,
        p_capture_rate: int = 0,
        p_base_friendship: int = 0,
        p_ev_yield_hp: int = 0,
        p_ev_yield_attack: int = 0,
        p_ev_yield_defense: int = 0,
        p_ev_yield_special_attack: int = 0,
        p_ev_yield_special_defense: int = 0,
        p_ev_yield_speed: int = 0,
        p_base_experience_yield: int = 0,
        p_primary_type: PokemonType = null,
        p_secondary_type: PokemonType = null,
        p_primary_ability: PokemonAbility = null,
        p_secondary_ability: PokemonAbility = null,
        p_hidden_ability: PokemonAbility = null,
        p_egg_groups: Array[PokemonEggGroup] = [],
        p_egg_steps: int = 0,
        p_growth_rate: PokemonGrowthRate = null,
        p_percentage_male: float = 0.0,
        p_height: float = 0.0,
        p_weight: float = 0.0,
        p_pokedex_color: PokedexColor = null,
        p_wild_held_items: Array[Dictionary] = [],
        p_icon_sprite: Texture = null,
        p_icon_sprite_shiny: Texture = null,
        p_front_sprite: Texture = null,
        p_front_sprite_shiny: Texture = null,
        p_back_sprite: Texture = null,
        p_back_sprite_shiny: Texture = null,
        p_overworld_sprite: Texture = null,
        p_overworld_sprite_shiny: Texture = null,
        p_egg_icon: Texture = null,
        p_egg_sprite: Texture = null,
) -> void:
        self.form_index = p_form_index
        self.species = p_species
        self.form_name = p_form_name
        self.display_name = p_display_name
        self.category = p_category
        self.generation = p_generation
        self.pokedex_entries = p_pokedex_entries
        self.evolves_from = p_evolves_from
        self.evolves_into = p_evolves_into
        self.base_hp = p_base_hp
        self.base_attack = p_base_attack
        self.base_defense = p_base_defense
        self.base_special_attack = p_base_special_attack
        self.base_special_defense = p_base_special_defense
        self.base_speed = p_base_speed
        self.capture_rate = p_capture_rate
        self.base_friendship = p_base_friendship
        self.ev_yield_hp = p_ev_yield_hp
        self.ev_yield_attack = p_ev_yield_attack
        self.ev_yield_defense = p_ev_yield_defense
        self.ev_yield_special_attack = p_ev_yield_special_attack
        self.ev_yield_special_defense = p_ev_yield_special_defense
        self.ev_yield_speed = p_ev_yield_speed
        self.base_experience_yield = p_base_experience_yield
        self.primary_type = p_primary_type
        self.secondary_type = p_secondary_type
        self.primary_ability = p_primary_ability
        self.secondary_ability = p_secondary_ability
        self.hidden_ability = p_hidden_ability
        self.egg_groups = p_egg_groups
        self.egg_steps = p_egg_steps
        self.growth_rate = p_growth_rate
        self.percentage_male = p_percentage_male
        self.height = p_height
        self.weight = p_weight
        self.pokedex_color = p_pokedex_color
        self.wild_held_items = p_wild_held_items
        self.icon_sprite = p_icon_sprite
        self.icon_sprite_shiny = p_icon_sprite_shiny
        self.front_sprite = p_front_sprite
        self.front_sprite_shiny = p_front_sprite_shiny
        self.back_sprite = p_back_sprite
        self.back_sprite_shiny = p_back_sprite_shiny
        self.overworld_sprite = p_overworld_sprite
        self.overworld_sprite_shiny = p_overworld_sprite_shiny
        self.egg_icon = p_egg_icon
        self.egg_sprite = p_egg_sprite