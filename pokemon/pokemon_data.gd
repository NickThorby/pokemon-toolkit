class_name PokemonData

enum ContestType {
	COOL,
	BEAUTIFUL,
	CUTE,
	CLEVER,
	TOUGH,
}

enum MoveCategory {
	PHYSICAL,
	SPECIAL,
	STATUS,
}

enum PokemonClassification {
    NORMAL,
    PSEUDO_LEGENDARY,
    SUB_LEGENDARY,
    LEGENDARY,
    MYTHICAL,
    ULTRA_BEAST,
    PARADOX
}

enum PokemonGender {
    STANDARD,
    ALWAYS_MALE,
    ALWAYS_FEMALE,
    GENDERLESS
}

enum PokemonStat{
    HP,
    ATTACK,
    DEFENSE,
    SPECIAL_ATTACK,
    SPECIAL_DEFENSE,
    SPEED,
    ACCURACY,
    EVASION,
    SPECIAL # for gen 2 and below
}

enum Gender {
    MALE,
    FEMALE,
    GENDERLESS
}
enum EggGroup {
    NONE,
    MONSTER,
    WATER_1,
    BUG,
    FLYING,
    FIELD,
    FAIRY,
    GRASS,
    HUMAN_LIKE,
    WATER_3,
    MINERAL,
    AMORPHOUS,
    WATER_2,
    DITTO,
    DRAGON,
    UNDISCOVERED,
}

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

enum FormChangeTrigger {
    IN_BATTLE,
    END_OF_BATTLE,
    MEGA,
    ULTRA_BURST,
    GIGANTIMAX,
    USE_ITEM,
    HELD_ITEM,
    WEATHER,
    ENVIRONMENT,
    SEASON,
    TIME_OF_DAY,
    LEVEL,
    HAS_MOVE,
    USE_MOVE,
    HAS_ABILITY,
    HIT_BY_DAMAGING_MOVE,
    HIT_BY_PHYSICAL_MOVE,
    FAINT_OPPONENT,
    ATTACK,
    END_OF_TURN,
    SWITCH_OUT,
    HP_BELOW_50,
    HP_ABOVE_50,
    HP_ABOVE_25,
    GROOM,
}

static func calc_max_hp(base_hp, level, iv, ev):
    return 0;

static func calc_stat(base_stat, level, iv, ev):
    return 0;

