extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	process_mode = Node2D.PROCESS_MODE_PAUSABLE
	$Container.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var pause = Input.is_action_pressed("pause")
	if pause:
		get_tree().paused = true
		$Container.show()

func _on_voltar_pressed():
	get_tree().paused = false
	$Container.hide()

func _on_sair_pressed():
	get_tree().quit()


func _on_voltar_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/main.tscn")
