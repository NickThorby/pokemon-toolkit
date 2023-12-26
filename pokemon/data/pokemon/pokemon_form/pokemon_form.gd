extends Dexable
class_name PokemonForm

@export var form_index: int
@export var species: PokemonSpecies
@export var form_name: String
@export var display_name: String
@export var category: String
@export var generation: int

@export_multiline var pokedex_entries: Dictionary # {text: String, region: String}

@export var evolves_from: PokemonForm
@export var evolves_into: Array[Dictionary] # {species: Species, trigger: PokemonData.EvolutionTrigger, condition: PokemonData.EvolutionCondition, condition_value: see_docs}

# Forms this pokemon can change into, like megas. Does not include regional variants and cosmetic forms.
@export var forms: Array[Dictionary] # {triggers: Array[Dictionary] {trigger: PokemonData.FormChangeTrigger, trigger_value: see_docs}, form: PokemonForm}

@export var base_stats: StatTable
@export var ev_yields: StatTable
@export var base_experience_yield: int
@export var base_happiness: int

@export var primary_type: PokemonType
@export var secondary_type: PokemonType

@export var primary_ability: Ability
@export var secondary_ability: Ability
@export var hidden_ability: Ability

@export var learnset: Dictionary # {level_up: Array[Dictionary], tm: Array[Dictionary], egg_move: Array[Dictionary], tutor: Array[Move], previous_generation: Array[Dictionary]}

@export var primary_egg_group: PokemonData.EggGroup
@export var secondary_egg_group: PokemonData.EggGroup
@export var egg_steps: int
@export var growth_rate: PokemonGrowthRate
@export var gender_ratio: Dictionary # {PokemonData.PokemonGender.MALE: float, PokemonData.PokemonGender.FEMALE: float}
@export var has_gender_differences: bool

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

# female sprites for if has_gender_differences is true

@export var front_sprite_female: Texture
@export var front_sprite_shiny_female: Texture
@export var back_sprite_female: Texture
@export var back_sprite_shiny_female: Texture

func _init(
    p_form_index: int = 0,
    p_species: String = "",
    p_form_name: String = "",
    p_display_name: String = "",
    p_category: String = "",
    p_generation: int = 0,
    p_pokedex_entries: Dictionary = {},
    p_evolves_from: String = "",
    p_evolves_into: Array[Dictionary] = [],
    p_forms: Array[Dictionary] = [],
    p_base_stats: Dictionary = {},
    p_ev_yields: Dictionary = {},
    p_base_experience_yield: int = 0,
    p_base_happiness: int = 0,
    p_primary_type: String = "",
    p_secondary_type: String = "",
    p_primary_ability: String = "",
    p_secondary_ability: String = "",
    p_hidden_ability: String = "",
    p_learnset: Dictionary = {},
    p_primary_egg_group: PokemonData.EggGroup = PokemonData.EggGroup.UNDISCOVERED,
    p_secondary_egg_group: PokemonData.EggGroup = PokemonData.EggGroup.UNDISCOVERED,
    p_egg_steps: int = 0,
    p_growth_rate: String = "",
    p_gender_ratio: Dictionary = {},
    p_has_gender_differences: bool = false,
    p_height: float = 0.0,
    p_weight: float = 0.0,
    p_pokedex_color: String = "",
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
    p_front_sprite_female: Texture = null,
    p_front_sprite_shiny_female: Texture = null,
    p_back_sprite_female: Texture = null,
    p_back_sprite_shiny_female: Texture = null
):
    self.form_index = p_form_index
    self.species = Global.Dex.get_species(p_species)
    self.form_name = p_form_name
    self.display_name = p_display_name
    self.category = p_category
    self.generation = p_generation
    self.pokedex_entries = p_pokedex_entries
    self.evolves_from = Global.Dex.get_form(p_evolves_from)

    self.evolves_into = []
    for evo in p_evolves_into:
        var evo_obj = {
            "species": Global.Dex.get_species(evo["species"]),
            "trigger": evo["trigger"],
            "condition": evo["condition"],
            "condition_value": evo["condition_value"]
        }
        if evo_obj["trigger"] == PokemonData.EvolutionTrigger.USE_ITEM:
            evo_obj["item"] = Global.Dex.get_item(evo["item"])
        
        if evo_obj["condition"] == PokemonData.EvolutionCondition.HELD_ITEM:
            evo_obj["condition_value"] = Global.Dex.get_item(evo["condition_value"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.KNOWS_MOVE:
            evo_obj["condition_value"] = Global.Dex.get_move(evo["condition_value"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.KNOWS_MOVE_TYPE:
            evo_obj["condition_value"] = Global.Dex.get_type(evo["condition_value"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.MOVE_USED_NUMBER_OF_TIMES:
            evo_obj["condition_value"]["move"] = Global.Dex.get_move(evo_obj["condition_value"]["move"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.TYPE_IN_PARTY:
            evo_obj["condition_value"] = Global.Dex.get_type(evo["condition_value"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.POKEMON_IN_PARTY:
            evo_obj["condition_value"] = Global.Dex.get_form(evo["condition_value"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.DEFEATED_POKEMON_HOLDING_ITEM:
            evo_obj["condition_value"]["species"] = Global.Dex.get_form(evo_obj["condition_value"]["species"])
            evo_obj["condition_value"]["item"] = Global.Dex.get_item(evo_obj["condition_value"]["item"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.TRADED_FOR_SPECIES:
            evo_obj["condition_value"] = Global.Dex.get_form(evo["condition_value"])
        elif evo_obj["condition"] == PokemonData.EvolutionCondition.ITEMS_IN_BAG:
            evo_obj["condition_value"]["item"] = Global.Dex.get_item(evo_obj["condition_value"]["item"])

        self.evolves_into.append(evo_obj)

    self.forms = p_forms

    self.base_stats = StatTable.new(p_base_stats, 255, 1)
    self.ev_yields = StatTable.new(p_ev_yields, 3, 0, 3)
    self.base_experience_yield = p_base_experience_yield
    self.base_happiness = p_base_happiness
    self.primary_type = Global.Dex.get_type(p_primary_type)
    self.secondary_type = Global.Dex.get_type(p_secondary_type)
    self.primary_ability = Global.Dex.get_ability(p_primary_ability)
    self.secondary_ability = Global.Dex.get_ability(p_secondary_ability)
    self.hidden_ability = Global.Dex.get_ability(p_hidden_ability)

    self.learnset = p_learnset

    self.primary_egg_group = p_primary_egg_group
    self.secondary_egg_group = p_secondary_egg_group
    self.egg_steps = p_egg_steps
    self.growth_rate = Global.Dex.get_growth_rate(p_growth_rate)
    self.gender_ratio = p_gender_ratio
    self.has_gender_differences = p_has_gender_differences
    self.height = p_height
    self.weight = p_weight
    self.pokedex_color = Global.Dex.get_pokedex_color(p_pokedex_color)

    self.wild_held_items = []
    for item in p_wild_held_items:
        self.wild_held_items.append({
            "item": Global.Dex.get_item(item["item"]),
            "chance": item["chance"]
        })

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
    self.front_sprite_female = p_front_sprite_female
    self.front_sprite_shiny_female = p_front_sprite_shiny_female
    self.back_sprite_female = p_back_sprite_female
    self.back_sprite_shiny_female = p_back_sprite_shiny_female