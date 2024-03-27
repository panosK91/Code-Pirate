extends Node2D
class_name FinalDoor

var activated = false

func activate():
	activated = true
	$AnimationPlayer.play("Activated")
	get_tree().paused = true


func _on_area_2d_area_entered(area):
	if area.get_parent() is Player && !activated:
		activate()
		GameManager.display_question.visible = true
