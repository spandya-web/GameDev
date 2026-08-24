extends Node2D

@export var ball_spawn : Marker2D
@export var ball_scene : PackedScene
var score = 0
var is_game_over = false
@onready var score_label = $ScoreLabel

# Spawns the ball in the game 
func _spawn_ball() -> void:
	var ball = ball_scene.instantiate()
	ball.global_position = ball_spawn.global_position
	add_child(ball)

# Increases the score by one
func add_score() -> void:
	score += 1
	update_score()

# Displays the increased score
func update_score() -> void:
	score_label.text = "Score: " + str(score)
	
func game_over() -> void:
	is_game_over = true
	$Timer.stop()
	print("GAME STOPPED")
