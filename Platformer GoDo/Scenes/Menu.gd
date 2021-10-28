extends Node2D



func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Level 1.tscn")


func _on_Statement_pressed():
	get_tree().change_scene("res://Scenes/Artist Statement.tscn")
	pass # Replace with function body.


func _on_Instructions_pressed():
	get_tree().change_scene("res://Scenes/Instruction.tscn")
	pass # Replace with function body.


func _on_Main_Menu_pressed():
	get_tree().change_scene("res://Scenes/Menu.tscn")
	pass # Replace with function body.
