extends Object
class_name Attacker

var source # Pokemon
var damage # int
var thisTurn # bool
var move # String
var slot # String
var damageValue # EHR

func _init(p_data):
    source = p_data.source
    damage = p_data.damage
    thisTurn = p_data.thisTurn
    move = p_data.move
    slot = p_data.slot
    damageValue = p_data.damageValue