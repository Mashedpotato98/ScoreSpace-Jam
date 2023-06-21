extends Area2D

var speed = rand_range(4,6)
var death = false
var score = 0

func _ready():
	pass


func _process(delta):
	position.y += speed
	print(score)

func _on_Enemy_1_area_entered(area):
	position.x = rand_range(10,351)
	position.y = rand_range(-4,2)
	score += 1


func _on_Enemy_1_body_entered(body):
	get_tree().reload_current_scene()
