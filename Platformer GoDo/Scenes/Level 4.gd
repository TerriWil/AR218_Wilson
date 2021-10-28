extends Node2D



func _on_Goal_body_entered(body):
	var e = $Enemies.get_child_count()
	var i = $Money.get_child_count()
	if e == 0 and i == 0 :
		print ("change scene")
		get_tree().change_scene("res://Scenes/Level 5.tscn")
	else:
		print(i)
		print(e)
	pass # Replace with function body.
