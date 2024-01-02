extends Node

var dex: Dex
var prng: PRNG


# Called when the node enters the scene tree for the first time.
func _ready():
	dex = Dex.new()
	prng = PRNG.new(Global.dex.settings.prng_seed)


