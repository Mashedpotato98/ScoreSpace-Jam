extends KinematicBody2D

#--movement
var speed = 3
#--bullet
var bull = preload("res://Scenes/Bullet.tscn")
onready var pos1 = $Barrel_1
onready var pos2 = $Barrel_2
var extra = false
onready var time = $Timer

func _ready():
	pass 

func _process(delta):
	#--movement
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed

	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed

#shooting
	if Input.is_action_pressed("shoot") and extra == false:
		var bull_ins = bull.instance()
		pos1.add_child(bull_ins)

	if Input.is_action_pressed("shoot") and extra == true:
		var bull_ins = bull.instance()
		pos1.add_child(bull_ins)
		var bull_ins2 = bull.instance()
		pos2.add_child(bull_ins2)

	move_and_collide(velocity)

func _on_Detector_area_entered(area):
	extra = true
	time.start(2)

func _on_Timer_timeout():
	extra = false
	time.stop()
