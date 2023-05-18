extends Object
class_name BattleQueue

var battle: BattleSimulator
var list: Array[Action]

func _init(p_battle: BattleSimulator):
    self.battle = p_battle
    self.list = []

func shift():
    pass

func peek():
    pass

func push():
    pass

func unsift():
    pass

func entries():
    pass

func resolve_action():
    pass

func prioritize_action():
    pass

func change_action():
    pass

func add_choice():
    pass

func will_act():
    pass

func will_move():
    pass

func cancel_action():
    pass

func cancel_move():
    pass

func will_switch():
    pass

func insert_choice():
    pass

func clear():
    pass

func debug():
    pass

func sort():
    pass