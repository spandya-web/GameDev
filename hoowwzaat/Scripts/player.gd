extends CharacterBody2D

var swinging = false

func _process(delta):

	if Input.is_action_just_pressed("ui_accept"):
		swing()

func swing():
	if swinging:
		return

	swinging = true
	$AnimatedSprite2D.rotation_degrees = -45
	await get_tree().create_timer(0.1).timeout
	$AnimatedSprite2D.rotation_degrees = 0

	swinging = false
