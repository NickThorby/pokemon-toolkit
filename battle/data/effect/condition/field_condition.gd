extends Condition
class_name FieldCondition

var on_field_residual_order: int
var on_field_residual_priority: int
var on_field_residual_sub_order: int

func _init():
    return

func on_field_start(data: Dictionary):
    pass

func on_field_restart(data: Dictionary):
    pass

func on_field_residual(data: Dictionary):
    pass

func on_field_end(data: Dictionary):
    pass