extends Control

var game = "res://scenes/game.tscn"

func _on_button_pressed():
	get_tree().change_scene_to_file(game)


func _on_sair_pressed():
	get_tree().quit()
	
