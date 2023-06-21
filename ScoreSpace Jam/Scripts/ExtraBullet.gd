extends Area2D

var speed = 5

func _ready():
	pass

func _process(delta):
	position.y += speed

func _on_ExtraBullet_area_entered(area):
	position.x = rand_range(10,351)
	position.y = rand_range(-4,2)
