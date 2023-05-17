extends Node

func to_id(text) -> String:
    if text != null and text.has("id"):
        text = text.id

    if typeof(text) != TYPE_STRING and typeof(text) != TYPE_INT:
        return ""

    var id = str(text).to_lower()
    id = id.gsub("[^a-z0-9]+", "")
    return id

func assign_properties(source, target) -> void:
    for key in source.keys():
        target[key] = source[key]