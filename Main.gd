extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var vel  = Vector2(10 , 0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if Input.is_action_just_pressed("ui_left"):
		vel.x -= 5
	elif Input.is_action_just_pressed("ui_right"):
		vel.x += 5
		
	move_and_collide(vel)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	vel.x += 1
	vel.x *= -1
	
