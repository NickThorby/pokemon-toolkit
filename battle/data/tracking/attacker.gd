extends Object
class_name Attacker

var source # Pokemon
var damage # int
var thisTurn # bool
var move # String
var slot # String
var damageValue # EHR

func _init(p_attacker_data):
    Utils.assign_properties(p_attacker_data, self)