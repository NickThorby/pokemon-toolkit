extends Object
class_name Choice

var cant_undo: bool # true if the choice can't be cancelled because of the maybeTrapped issue
var error: String # contains error text in the case of a choice error
var actions: Array[ChosenAction] # array of chosen actions
var forced_switches_left: int # number of switches left that need to be performed
var forced_passes_left: int # number of passes left that need to be performed
var switch_ins: Array[int] # indexes of pokemon chosen to switch in
var z_move: bool # true if a Z-move has already been selected
var mega: bool # true if a mega evolution has already been selected
var ultra: bool # true if an ultra burst has already been selected
var dynamax: bool # true if a dynamax has already been selected
var terastallize: bool # true if a terastallization has already been inputted

func _init(p_choice_data): 
    Utils.assign_properties(p_choice_data, self)