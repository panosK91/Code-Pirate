extends CharacterBody2D

class_name Player

@onready var animation = $AnimationPlayer
@onready var sprite = $Sprite2D

@export var speed = 300.0
@export var jump_height = -400.0

@export var attacking = false
@export var hit = false

var max_health = 10
var health = 0
var can_take_damage = true

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	GameManager.damage_taken = 0
	health = max_health
	GameManager.player = self

func _process(delta):
	if Input.is_action_just_pressed("attack") && !hit:
		attack()


func _physics_process(delta):

	if Input.is_action_just_pressed("left"):
		sprite.scale.x = abs(sprite.scale.x) * -1
		$AttackArea.scale.x = abs($AttackArea.scale.x) * -1

	if Input.is_action_just_pressed("right"):
		sprite.scale.x = abs(sprite.scale.x)
		$AttackArea.scale.x = abs($AttackArea.scale.x)
	
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = jump_height

	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	update_animation()
	move_and_slide()
	
	if position.y >= 1000:
		die()
	
	
func attack():
	var overlapping_areas = $AttackArea.get_overlapping_areas()
	for area in overlapping_areas:
		if area.get_parent().is_in_group("Enemies"):
			area.get_parent().take_damage(1)
	attacking = true
	animation.play("Attack")
	
func update_animation():
	if !attacking && !hit:
		if velocity.x != 0:
			animation.play("Run")
		else:
			animation.play("Idle")
		
		if velocity.y < 0:
			animation.play("Jump")

		if velocity.y > 0:
			animation.play("Fall")

func take_damage(damage_amount:int):
	if can_take_damage:
		iframes()
		hit = true
		attacking = false
		animation.play("Hit")
		
		GameManager.damage_taken += 1
		
		health -= damage_amount
		get_node("HealthBar").update_healthbar(health, max_health)
		
		if health <= 0:
			die()

func iframes():
	can_take_damage = false
	await get_tree().create_timer(1).timeout
	can_take_damage = true

func die():
	GameManager.respawn_player()
