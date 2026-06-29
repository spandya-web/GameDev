extends Node2D

@export var ball_spawn : Marker2D
@export var ball_scene : PackedScene

func _spawn_ball()-> void:
	var ball = ball_scene.instantiate()
	ball.global_position = ball_spawn.global_position
	add_child(ball)
	
