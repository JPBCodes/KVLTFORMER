extends Area2D

signal gem_collected

func _on_body_entered(body:Node2D):
	if body.name == "Player":
		Global.gems_collected += 1
		gem_collected.emit()
		$GemSfx.play()
		hide()
		

func _on_gem_sfx_finished():
	queue_free()
