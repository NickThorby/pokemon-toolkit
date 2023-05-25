extends Resource
class_name Dex

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
    if abilities.has(id):
        return abilities[id]
    else:
        return null

func get_item(id: String) -> Item:
    if items.has(id):
        return items[id]
    else:
        return null

func get_move(id: String) -> Move:
    if moves.has(id):
        return moves[id]
    else:
        return null

func get_pokemon_species(id: String) -> PokemonSpecies:
    if pokemon_species.has(id):
        return pokemon_species[id]
    else:
        return null

func get_pokemon_form(id: String) -> PokemonForm:
    if pokemon_forms.has(id):
        return pokemon_forms[id]
    else:
        return null

func get_type(id: String) -> PokemonType:
    if types.has(id):
        return types[id]
    else:
        return null

func get_growth_rate(id: String) -> PokemonGrowthRate:
    if growth_rates.has(id):
        return growth_rates[id]
    else:
        return null

func get_pokedex_color(id: String) -> PokedexColor:
    if pokedex_colors.has(id):
        return pokedex_colors[id]
    else:
        return null