extends Dexable
class_name Nature

@export var name: String
@export var increased_stat: PokemonData.PokemonStat
@export var decreased_stat: PokemonData.PokemonStat
@export var favorite_flavor: PokemonData.Flavor
@export var disliked_flavor: PokemonData.Flavor

func _init(
    p_name: String,
    p_increased_stat: PokemonData.PokemonStat,
    p_decreased_stat: PokemonData.PokemonStat,
    p_favorite_flavor: PokemonData.Flavor,
    p_disliked_flavor: PokemonData.Flavor
):
    self.id = Utils.to_id(p_name)
    self.name = p_name
    self.increased_stat = p_increased_stat
    self.decreased_stat = p_decreased_stat
    self.favorite_flavor = p_favorite_flavor
    self.disliked_flavor = p_disliked_flavor
    