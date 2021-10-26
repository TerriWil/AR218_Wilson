extends Label



var my_string = "Cleaning power collected"

func _on_Sanitizer_money_collected():
	$AudioStreamPlayer2D.play()
	pass # Replace with function body.
	
	
	
	text = String(Global.score) + my_string
