extends Resource
class_name PokemonForm

@export var form_index: int
@export var species: PokemonSpecies
@export var form_name: String
@export var display_name: String
@export var category: String
@export var generation: int

@export_multiline var pokedex_entries: Dictionary # {text: String, region: String}

@export var evolves_from: PokemonSpecies
@export var evolves_into: Array[Dictionary] # {species: PokemonSpecies, trigger: EvolutionTrigger, condition: EvolutionCondition, condition_value: see_docs}

@export var base_stats: PokemonStatArray
@export var capture_rate: int
@export var base_friendship: int

@export var ev_yields: PokemonStatArray
@export var base_experience_yield: int

@export var primary_type: PokemonType
@export var secondary_type: PokemonType

@export var primary_ability: Ability
@export var secondary_ability: Ability
@export var hidden_ability: Ability

@export var learnset: Dictionary # {level_up: Array[Dictionary], tm: Array[Dictionary], egg_move: Array[Dictionary], tutor: Array[Move], previous_generation: Array[Dictionary]}

@export var primary_egg_group: GameData.EggGroup 
@export var secondary_egg_group: GameData.EggGroup
@export var egg_steps: int
@export var growth_rate: PokemonGrowthRate
@export var gender: GameData.PokemonGender
@export var gender_ratio: Dictionary # {GameData.Gender: float}

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
        p_base_stats: PokemonStatArray = null,
        p_capture_rate: int = 0,
        p_base_friendship: int = 0,
        p_ev_yields:PokemonStatArray = null,
        p_base_experience_yield: int = 0,
        p_primary_type: PokemonType = null,
        p_secondary_type: PokemonType = null,
        p_primary_ability: Ability = null,
        p_secondary_ability: Ability = null,
        p_hidden_ability: Ability = null,
        p_learnset: Dictionary = {},
        p_primary_egg_group: GameData.EggGroup = GameData.EggGroup.NONE,
        p_secondary_egg_group: GameData.EggGroup = GameData.EggGroup.NONE,
        p_egg_steps: int = 0,
        p_growth_rate: PokemonGrowthRate = null,
        p_gender: GameData.PokemonGender = GameData.PokemonGender.STANDARD,
        p_gender_ratio: Dictionary = {GameData.Gender.MALE: 0.5, GameData.Gender.FEMALE: 0.5},
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
        self.base_stats = p_base_stats
        self.capture_rate = p_capture_rate
        self.base_friendship = p_base_friendship
        self.ev_yields = p_ev_yields
        self.base_experience_yield = p_base_experience_yield
        self.primary_type = p_primary_type
        self.secondary_type = p_secondary_type
        self.primary_ability = p_primary_ability
        self.secondary_ability = p_secondary_ability
        self.hidden_ability = p_hidden_ability
        self.learnset = p_learnset
        self.primary_egg_group = p_primary_egg_group
        self.secondary_egg_group = p_secondary_egg_group
        self.egg_steps = p_egg_steps
        self.growth_rate = p_growth_rate
        self.gender = p_gender
        self.gender_ratio = p_gender_ratio
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