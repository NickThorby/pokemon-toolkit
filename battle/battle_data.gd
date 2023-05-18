class_name BattleData

enum Choice {
	MOVE,
	SWITCH,
	INSTA_SWITCH,
	REVIVAL_BLESSING,
	BAG,
	ROTATE,
	TEAM,
	SHIFT,
	PASS_TURN,
	RUN,
}

enum ActionChoice {
	START,
	RESIDUAL,
	PASS_TURN,
	BEFORE_TURN,
	MOVE,
	BEFORE_TURN_MOVE,
	PRIORITY_CHARGE_MOVE,
	MEGA_EVO,
	SHIFT,
	RUN_PRIMAL,
	RUN_SWITCH,
	EVENT,
	RUN_UNNERVE,
	RUN_DYNAMAX,
	TERASTALLIZE,
	SWITCH,
	INSTA_SWITCH,
	REVIVAL_BLESSING,
	TEAM,
	NONE,
}

enum BattleType {
    WILD,
	WILD_DOUBLE,
    SOS,
    HORDE,
    SINGLES,
    DOUBLES,
    TRIPLES,
    MULTI,
    LAUNCHER,
    ROTATION,
    SKY,
    INVERSE,
    BATTLE_ROYAL,
    MAX_RAID,
    TERA_RAID,
}

enum BattleRequestState {
    TEAM_PREVIEW,
    MOVE,
    SWITCH,
    BLANK,
}

enum EffectType {
	CONDITION,
	POKEMON,
	MOVE,
	ITEM,
	ABILITY,
	NATURE,
	WEATHER,
	STATUS,
	TERASTAL,
	RULE,
}

enum MoveFlag {
	ALLY_ANIM, # The move plays its animation when used on an ally.
	BYPASS_SUB, # Ignores a target's substitute.
	BITE, # Power is multiplied by 1.5 when used by a Pokemon with the Ability Strong Jaw.
	BULLET, # Has no effect on Pokemon with the Ability Bulletproof.
	CHARGE, # The user is unable to make a move between turns.
	CONTACT, # Makes contact.
	DANCE, # When used by a Pokemon, other Pokemon with the Ability Dancer can attempt to execute the same move.
	DEFROST, # Thaws the user if executed successfully while the user is frozen.
	DISTANCE, # Can target a Pokemon positioned anywhere in a Triple Battle.
	FAIL_COPYCAT, # Cannot be selected by Copycat.
	FAIL_ENCORE, # Encore fails if target used this move.
	FAIL_INSTRUCT, # Cannot be repeated by Instruct.
	FAIL_ME_FIRST, # Cannot be selected by Me First.
	FAIL_MIMIC, # Cannot be copied by Mimic.
	FUTURE_MOVE, # Targets a slot, and in 2 turns damages that slot.
	GRAVITY, # Prevented from being executed or selected during Gravity's effect.
	HEAL, # Prevented from being executed or selected during Heal Block's effect.
	MIRROR, # Can be copied by Mirror Move.
	MUST_PRESSURE, # Additional PP is deducted due to Pressure when it ordinarily would not.
	NO_ASSIST, # Cannot be selected by Assist.
	NON_SKY, # Prevented from being executed or selected in a Sky Battle.
	NO_PARENTAL_BOND, # Cannot be made to hit twice via Parental Bond.
	NO_SLEEP_TALK, # Cannot be selected by Sleep Talk.
	PLEDGE_COMBO, # Gems will not activate. Cannot be redirected by Storm Drain / Lightning Rod.
	POWDER, # Has no effect on Pokemon which are Grass-type, have the Ability Overcoat, or hold Safety Goggles.
	PROTECT, # Blocked by Detect, Protect, Spiky Shield, and if not a Status move, King's Shield.
	PULSE, # Power is multiplied by 1.5 when used by a Pokemon with the Ability Mega Launcher.
	PUNCH, # Power is multiplied by 1.2 when used by a Pokemon with the Ability Iron Fist.
	RECHARGE, # If this move is successful, the user must recharge on the following turn and cannot make a move.
	REFLECTABLE, # Bounced back to the original user by Magic Coat or the Ability Magic Bounce.
	SLICING, # Power is multiplied by 1.5 when used by a Pokemon with the Ability Sharpness.
	SNATCH, # Can be stolen from the original user and instead used by another Pokemon using Snatch.
	SOUND, # Has no effect on Pokemon with the Ability Soundproof.
	WIND, # Activates the Wind Power and Wind Rider Abilities.
}

enum MoveTarget {
	ADJACENT_ALLY, # Only relevant to Doubles or Triples, the move only targets an ally of the user.
	ADJACENT_ALLY_OR_SELF, # The move can target the user or its ally.
	ADJACENT_FOE, # The move can target a foe, but not (in Triples) a distant foe.
	ALL, # The move targets the field or all Pokémon at once.
	ALL_ADJACENT, # The move is a spread move that also hits the user's ally.
	ALL_ADJACENT_FOES, # The move is a spread move.
	ALLIES, # The move affects all active Pokémon on the user's team.
	ALLY_SIDE, # The move adds a side condition on the user's side.
	ALLY_TEAM, # The move affects all unfainted Pokémon on the user's team.
	ANY, # The move can hit any other active Pokémon, not just those adjacent.
	FOE_SIDE, # The move adds a side condition on the foe's side.
	NORMAL, # The move can hit one adjacent Pokémon of your choice.
	RANDOM_NORMAL, # The move targets an adjacent foe at random.
	SCRIPTED, # The move targets the foe that damaged the user.
	SELF, # The move affects the user of the move.
}

enum NonStandard {
	PAST,
	FUTURE,
}

enum EventHandlerState {
    KEEP_GOING,
    FAIL_LOUDLY,
    FAIL_SILENTLY,
    SET_VALUE,
}