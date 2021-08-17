extends Control


func _ready():
	$AnimationPlayer.play("Cutscene1")
	$Camera2D/AnimatedSprite2.play()
	

func _on_continuar_pressed():
	if Save['data']['contador'] == 1:
		$AnimationPlayer.play("Cutscene2")
		Save['data']['contador'] +=1
		Save._saveData()
	elif Save['data']['contador'] == 2:
		$AnimationPlayer.play("Cutscene3")
		Save['data']['contador'] +=1
		Save._saveData()
	elif Save['data']['contador'] == 3:
		$AnimationPlayer.play("Cutscene4")
		Save['data']['contador'] +=1
		Save._saveData()
	elif Save['data']['contador'] == 4:
		$AnimationPlayer.play("Cutscene5")
		Save['data']['contador'] +=1
		Save._saveData()
	elif Save['data']['contador'] == 5:
		$AnimationPlayer.play("Cutscene6")
		Save['data']['contador'] +=1
		Save._saveData()
	elif Save['data']['contador'] == 6:
		$AnimationPlayer.play("Cutscene7")
		Save['data']['contador'] += 1
		Save._saveData()
	elif Save['data']['contador'] == 7:
		$AnimationPlayer.play("Cutscene8")
		Save['data']['contador'] = 1
		Save._saveData()
