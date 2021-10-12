extends Area2D


signal money_collected
func _on_Sanitizer_body_entered(body):
	emit_signal("money_collected")
	
	queue_free()
	
	Global.score = Global.score + 1
	print(Global.score)
	
	
	

	set_collision_layer_bit(3,false)
	set_collision_mask_bit(0,false)
	
