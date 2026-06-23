extends Area2D

var speed = 300
var hit = false
var fly_x = 0
var fly_y = 0
var direction: Vector2 = Vector2(0.5, 0.5)

func _process(delta):
	if hit:
		position += direction * speed * delta
	else:
		position.x -= speed * delta

func _on_area_entered(area):
	if area.name == "Bat" and not hit:
		var marker = area.get_child(0)
		direction = (marker.global_position - global_position).normalized()
		direction.y = -direction.y
		print(direction)
		print("HIT!")
		hit = true
