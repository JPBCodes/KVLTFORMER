extends CanvasLayer

func level(number):
	$LevelLabel.text = "Level " + str(number)

func gems(number):
	$GemsLabel.text = "Gems: " + str(number)
