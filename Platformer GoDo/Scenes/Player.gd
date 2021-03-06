extends KinematicBody2D

var velocity := Vector2(0,0)
export var speed := 180
export var jump := -900
export var energy: = 10
const GRAVITY := 35

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = speed
		$AnimatedSprite.play("Walk")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
		$AnimatedSprite.play("Walk")
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.play("Idle")
	#show with "pressed"
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y += jump
		$JumpSoundPlayer.play()
		
	if not is_on_floor():
		$AnimatedSprite.play("Jump")

	velocity.y += GRAVITY

	velocity = move_and_slide(velocity, Vector2.UP)

	velocity.x = lerp(velocity.x, 0,0.1)

func _on_Area2D_body_entered(body):
		get_tree().change_scene("res://Scenes/Level 1.tscn")
		pass # Replace with function body.
