extends Area2D

var speed = 10

func _process(delta):
	position.y -= speed
	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
