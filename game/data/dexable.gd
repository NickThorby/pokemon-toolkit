extends Resource
class_name Dexable

var dex_override

func _init(
    p_dex_override = null
) -> void:
    if not p_dex_override:
        self.dex_override = "default"
    else:
       self.dex_override = p_dex_override