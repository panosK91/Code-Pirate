extends Node2D


func _on_start_pressed():
	get_tree().change_scene_to_file("res://Scenes/WorldScenes/Level1.tscn")


func _on_start_2_pressed():
	get_tree().quit()
