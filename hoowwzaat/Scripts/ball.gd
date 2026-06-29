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
		direction = Vector2(1, -1).normalized()
		#await get_tree().create_timer(1.0).timeout
		#hit = false
		#position = Vector2(900, 350)
