extends Condition
class_name SideCondition

var on_side_residual_order: int
var on_side_residual_priority: int
var on_side_residual_sub_order: int

func _init():
    return

func on_side_start(data: Dictionary):
    pass

func on_side_restart(data: Dictionary):
    pass

func on_side_residual(data: Dictionary):
    pass

func on_side_end(data: Dictionary):
    pass