extends EventListenerWithoutPriority
class_name EventListener

var order
var priority
var subOrder
var speed

func _init(
    p_order = false,
    p_priority = 0,
    p_subOrder = 0,
    p_speed = null
):
    order = p_order
    priority = p_priority
    subOrder = p_subOrder
    speed = p_speed