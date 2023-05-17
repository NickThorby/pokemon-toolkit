extends Node

func throw_error(message: String, is_error: bool = false):
    assert (is_error, GameError.new(message).message)