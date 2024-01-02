extends Resource
class_name Dex

var settings: Dictionary
var abilities: Dictionary
var items: Dictionary
var moves: Dictionary
var pokemon_species: Dictionary
var pokemon_forms: Dictionary
var types: Dictionary
var growth_rates: Dictionary
var pokedex_colors: Dictionary

func _init():
    pass

func get_ability(id: String) -> Ability:
    if self.abilities.has(id):
        return self.abilities[id]
    else:
        return null

func get_item(id: String) -> Item:
    if self.items.has(id):
        return self.items[id]
    else:
        return null

func get_move(id: String) -> Move:
    if self.moves.has(id):
        return self.moves[id]
    else:
        return null

func get_pokemon_species(id: String) -> PokemonSpecies:
    if self.pokemon_species.has(id):
        return self.pokemon_species[id]
    else:
        return null

func get_pokemon_form(id: String) -> PokemonForm:
    if self.pokemon_forms.has(id):
        return self.pokemon_forms[id]
    else:
        return null

func get_type(id: String) -> PokemonType:
    if self.types.has(id):
        return self.types[id]
    else:
        return null

func get_growth_rate(id: String) -> PokemonGrowthRate:
    if self.growth_rates.has(id):
        return self.growth_rates[id]
    else:
        return null

func get_pokedex_color(id: String) -> PokedexColor:
    if self.pokedex_colors.has(id):
        return self.pokedex_colors[id]
    else:
        return null

func get_setting(id: String) -> String:
    if self.settings.has(id):
        return self.settings[id]
    else:
        return ""