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

func _process(delta):
	var overlapping_areas = $Area2D.get_overlapping_areas()
	for area in overlapping_areas:
		if Input.is_action_just_pressed("interact") && area.get_parent() is Player && activated:
			GameManager.show_informations(self.get_name())

func _on_area_2d_area_entered(area):

	if area.get_parent() is Player && !activated:
		activate()
