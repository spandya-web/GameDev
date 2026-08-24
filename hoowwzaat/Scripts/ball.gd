extends Area2D

# Name variables 
var speed = 500
var hit = false
var direction = Vector2.ZERO
const MISS_POSITION_X = 50

# 
func _process(delta):
	if hit:
		position += direction * speed * delta
	else:
		position.x -= speed * delta
		if position.x < MISS_POSITION_X:
			game_over()

func _on_area_entered(area):
	if area.name == "Bat" and !hit:
		print("HIT!")
		hit = true
		# Update score
		get_tree().current_scene.add_score()
		# Make ball fly away
		direction = Vector2(1, -1).normalized()
		
func game_over():
	print("GAME OVER!")
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
