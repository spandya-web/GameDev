extends CharacterBody2D

var swinging = false
@onready var bat = $Bat
@onready var animation_player = $AnimationPlayer

func _ready():
	bat.monitoring = false

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		swing()

func swing():

	if swinging:
		return
		
	swinging = true
	bat.monitoring = true
	animation_player.play("swing")
	await get_tree().create_timer(0.1).timeout
	bat.monitoring = false
	swinging = false
	
