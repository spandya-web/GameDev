extends Node2D

@export var ball_spawn : Marker2D
@export var ball_scene : PackedScene
var score = 0
@onready var score_label = $ScoreLabel

func _spawn_ball() -> void:
	var ball = ball_scene.instantiate()
	ball.global_position = ball_spawn.global_position
	add_child(ball)

func add_score() -> void:
	score += 1
	update_score()

func update_score() -> void:
	score_label.text = "Score: " + str(score)
	
