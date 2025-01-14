extends Area2D

func _on_body_entered(_body):
	call_deferred("reiniciar")

func reiniciar():
	get_tree().reload_current_scene()
