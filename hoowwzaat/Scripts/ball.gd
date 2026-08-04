extends Area2D

var speed = 500
var hit = false
var direction = Vector2.ZERO

func _process(delta):
	if hit:
		position += direction * speed * delta
	else:
		position.x -= speed * delta

func _on_area_entered(area):
	if area.name == "Bat" and !hit:
		print("HIT!")
		hit = true
		
	#increase score
	get_tree().current_scene.add_score()
	
	#make ball fly away
	direction = Vector2(1, -1).normalized()
