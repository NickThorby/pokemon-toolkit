extends EventListenerWithoutPriority
class_name EventListener

var order
var priority
var subOrder
var speed

func _init(p_event_listener_data):
    if p_event_listener_data:
        super(p_event_listener_data)