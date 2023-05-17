extends Object
class_name Attacker

var source # Pokemon
var damage # int
var thisTurn # bool
var move # String
var slot # String
var damageValue # int | bool | null

func _init(data):
    source = data.source
    damage = data.damage
    thisTurn = data.thisTurn
    move = data.move
    slot = data.slot
    damageValue = data.damageValue