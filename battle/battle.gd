extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var stats = StatTable.new({"hp": 31, "atk": 31, "def": 31, "sp_atk": 31, "sp_def": 31, "spd": 31})
	print(stats.atk)
