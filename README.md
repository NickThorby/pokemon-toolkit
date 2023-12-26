# pokemon-toolkit
A Godot toolkit for building Pokémon fan games.


Pokemon Evolution Conditions

There are a lot of these! On a Pokemon's form you'll be able to set an array of evolutions (evolves_to), that array will contain an array of Dictionaries look like so:

{
    species: PokemonSpecies, 
    trigger: EvolutionTrigger, 
    condition: EvolutionCondition, 
    condition_value: see_below
}

The first three are simple enough, species is the species the pokemon should evolve into, trigger is either LEVEL_UP, TRADE, USE_ITEM, LOCATION or SPIN, these are the triggers available in the pokemon games. The evolution condition is where things get tricky, the toolkit provides the conditions available in the games and it needs to be set to one of these:

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
TRADED_FOR_POKEMON,
UPSIDE_DOWN,
ITEMS_IN_BAG,
SPIN_LENGTH,
SPIN_DIRECTION,
LOCATION,
REGION

For evolution condition, each condition will expect it's own formatted object, these are detailed below:

MIN_LEVEL: condition_value:int
MIN_FRIENDSHIP: condition_value:int
HELD_ITEM: condition_value:Item
IS_GENDER: condition_value:bool
TYPE_IN_PARTY: condition_value:PokemonType
POKEMON_IN_PARTY: condition_value:PokemonForm
RELATIVE_STATS: Dictionary with keys: stat_1:Array[string], stat_1_operator: string, stat_2:Array[string], stat_2_operator:string, comparison_operator: string for example: {stat_1: ["attack", "special_attack"], stat_1_operator: "+", stat_2: ["defense", "special_defense"], stat_2_operator: "+", comparison_operator: ">"} note that the stat names are the names used in the Pokemon class, not the names used in the PokemonSpecies class
CONTEST_CONDITION: Dictionary with keys, condition:string, value:int, operator:string, for example: {condition: "cool", value: 100, operator: ">="}
PERSONALITY_VALUE: Dictionary with keys forumla:string, operator:string, value:int, note in the formula you use the string 'personality_value' as a placeholder in the formula, for example: {formula: personality_value % 10, operator: "<=", value: 4}. Note the later games use the ENCRYPTION_CONSTANT instead of the PERSONALITY_VALUE, see below for that condition
ENCRYPTION_CONSTANT: Dictionary with keys forumla:string, operator:string, value:int, note in the formula you use the string 'encryption_constant' as a placeholder in the formula, for example: {formula: encryption_constant % 100, operator: "=", value: 100}
OVERWORLD_WEATHER: condition_value:string
OVERWORLD_MOON_PHASE: condition_value:string
KNOWS_MOVE: condition_value:Move
KNOWS_MOVE_TYPE: condition_value:PokemonType
MOVE_USED_NUMBER_OF_TIMES: Dictionary with keys: move:Move, number:int
CRITICAL_HITS_LANDED: condition_value:int
TAKEN_RECOIL_DAMAGE: condition_value:int
TAKEN_DAMAGE_WITHOUT_FAINTING: condition_value:int
DEFEATED_POKEMON_HOLDING_ITEM: condition_value:Dictionary with keys: species:PokemonForm, item:Item
STEPS_WALKED_OUTSIDE_OF_BALL: condition_value:int
TRADED_FOR_POKEMON: condition_value:PokemonForm
UPSIDE_DOWN: condition_value:bool
ITEMS_IN_BAG: condition_value:Dictionary with keys: item:Item, number:int
SPIN_LENGTH: condition_value:Dictionary with keys: length:int, operator:string, for example: {length: 5, operator: ">="}
SPIN_DIRECTION: condition_value:string
LOCATION: condition_value:string
REGION: condition_value:string


Dex Settings
max_evs_per_stat: int
max_evs_per_pokemon: int
generation: int
enable_mega_evolutions: bool
enable_primal_reversions: bool
enable_z_moves: bool
enable_dynamax: bool
