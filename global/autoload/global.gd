extends Node

var settings: Dictionary
var prng: PRNG


# Called when the node enters the scene tree for the first time.
func _ready():
	prng = PRNG.new(self.settings.prng_seed)


