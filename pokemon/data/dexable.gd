extends Resource
class_name Dexable

var id: String
var dex_override: String

func _init(
    p_dex_override = null
) -> void:
    if not p_dex_override:
        self.dex_override = "default"
    else:
       self.dex_override = p_dex_override