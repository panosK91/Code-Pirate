extends Node2D
class_name Checkpoint

@export var spanwnpoint = false
@export var win_condition = false

var activated = false

func _ready():
	if spanwnpoint:
		activate()

func activate():
	if win_condition:
		GameManager.win()

	GameManager.current_checkpoint = self
	activated = true
	$AnimationPlayer.play("Activated")
	GameManager.show_informations()


func _on_area_2d_area_entered(area):
	if area.get_parent() is Player && !activated:
		print(self)
		activate()
