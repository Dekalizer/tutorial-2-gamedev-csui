extends Node

var level_2_scene = "res://scenes/Level2.tscn"
var scene = load(level_2_scene)

func _on_GoToNextLevel_pressed() -> void:
	get_tree().change_scene_to(scene)
