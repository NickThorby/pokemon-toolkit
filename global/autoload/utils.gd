extends Node

func to_id(text) -> String:
	if typeof(text) == TYPE_OBJECT and text != null and text.has("id"):
		text = text.id

	if typeof(text) != TYPE_STRING and typeof(text) != TYPE_INT:
		return ""

	var regex = RegEx.new()
	regex.compile("[^a-z0-9]+")
	var id = str(text).to_lower()
	id = regex.sub(id, "")
	return id

func assign_properties(source, target):
	for key in source.keys():
		if target.has(key):
			target[key] = source[key]
