extends StaticBody2D
class_name Canon

var cannon_ball = load("res://Scenes/Interactable/canon_ball.tscn")
var debris = load("res://Scenes/Interactable/canon_debris.tscn")
@export var score = 100
@export var shooting : bool
var firerate = 2

@onready var animation_player = $AnimationPlayer
@onready var firepoint = $Firepoint

var max_health = 3
var health

func _ready():
	health = max_health
	shooting = true
	shoot()

func shoot():
	while shooting:
		animation_player.play("Fire")
		await get_tree().create_timer(firerate).timeout

func fire():
	var spawned_ball = cannon_ball.instantiate()
	spawned_ball.direction = firepoint.scale.x
	spawned_ball.global_position = firepoint.position
	add_child(spawned_ball)

func take_damage(damage_amount):
	health -= damage_amount
	
	get_node("HealthBar").update_healthbar(health, max_health)
	
	animation_player.play("Hit")
	
	if health <= 0:
		die()
	
func die():
	GameManager.score += score
	var spawn_debris = debris.instantiate()
	spawn_debris.global_position = position
	spawn_debris.get_child(1).play("Crumble")
	get_tree().get_root().get_child(1).add_child(spawn_debris)
	queue_free()
