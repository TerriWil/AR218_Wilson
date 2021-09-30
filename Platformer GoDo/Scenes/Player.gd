extends KinematicBody2D

const GRAVITY = 35

var velocity = Vector2(0,0)

export var speed= 100
export var jump = -900

func _physics_process(delta):
	if Input.is_action_just_pressed("right"):
		$AnimatedSprite.play("Walk")
		$AnimatedSprite.flip_h = false
		velocity.x= speed
	elif Input.is_action_pressed("left"):
		$AnimatedSprite.play("Walk")
		$AnimatedSprite.flip_h = true
		velocity.x=-speed
	else:
		velocity.x=0
	
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y += jump
		
	if not is_on_floor():
		$AnimatedSprite.play("jump")
		#get_node ("AnimatedSprite")
		velocity.y += GRAVITY
		print(velocity)
		
	move_and_slide(velocity,Vector2.UP)
	
