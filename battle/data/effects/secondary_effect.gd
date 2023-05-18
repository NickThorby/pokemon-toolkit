extends HitEffect
class_name SecondaryEffect

var chance # int

# Used to flag a secondary effect as added by Poison Touch
var ability # String

# Applies to Sparkling Aria's secondary effect: Affected by
# Sheer Force but not Shield Dust.
var dustproof # bool

# Gen 2 specific mechanics: Bypasses Substitute only on Twineedle,
# and allows it to flinch sleeping/frozen targets
var kings_rock # bool
var on_self # HitEffect

func _init(p_secondary_effect_data):
    super(p_secondary_effect_data)