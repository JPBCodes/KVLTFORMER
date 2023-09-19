extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Options/StartBtn.grab_focus()

	if !OS.has_feature("pc"):
		$Options/FullscreenBtn.hide()
		$Options/QuitBtnBtn.hide()



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_start_btn_pressed():
	get_tree().change_scene_to_file("res://level_1.tscn")


func _on_fullscreen_btn_pressed():
	if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
	elif DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_WINDOWED:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)


func _on_quit_btn_pressed():
	get_tree().quit()
