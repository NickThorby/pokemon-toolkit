extends Object
class_name ChosenAction

var cant_undo: bool # true if the choice can't be cancelled because of the maybeTrapped issue
var error: String # contains error text in the case of a choice error
var actions: Array[Choice] # array of chosen actions
var forced_switches_left: int # number of switches left that need to be performed
var forced_passes_left: int # number of passes left that need to be performed
var switch_ins: Array[int] # indexes of pokemon chosen to switch in
var z_move: bool # true if a Z-move has already been selected
var mega: bool # true if a mega evolution has already been selected
var ultra: bool # true if an ultra burst has already been selected
var dynamax: bool # true if a dynamax has already been selected
var terastallize: bool # true if a terastallization has already been inputted

func _init(
    p_cant_undo: bool = false,
    p_error: String = "",
    p_actions: Array[Choice] = [],
    p_forced_switches_left: int = 0,
    p_forced_passes_left: int = 0,
    p_switch_ins: Array[int] = [],
    p_z_move: bool = false,
    p_mega: bool = false,
    p_ultra: bool = false,
    p_dynamax: bool = false,
    p_terastallize: bool = false
): 
    cant_undo = p_cant_undo
    error = p_error
    actions = p_actions
    forced_switches_left = p_forced_switches_left
    forced_passes_left = p_forced_passes_left
    switch_ins = p_switch_ins
    z_move = p_z_move
    mega = p_mega
    ultra = p_ultra
    dynamax = p_dynamax
    terastallize = p_terastallize