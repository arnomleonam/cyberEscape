extends Control

var ptbr = {
	"1":"Continuar",
	"2":"Começar",
	"3":"Opções",
	"4":"Sair",
	"5":"Idioma",
	"6":"Português",
	"7":"Inglês"
}

var english = {
	"1":"Continue",
	"2":"Start",
	"3":"Options",
	"4":"Exit",
	"5":"Language",
	"6":"Portuguese",
	"7":"English"
}


func _ready():
	Save._loadData()
	$AnimationPlayer.play("intro")
	if Save.data['ptbr'] == true:
		$main/Control/Control/VBoxContainer/continuar.text = ptbr['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_ativo.text = ptbr['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_blue.text = ptbr['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_red.text = ptbr['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_disabled.text = ptbr['1']
		
		$main/Control/Control/VBoxContainer/comecar.text = ptbr['2']
		$main/Control/Control/VBoxContainer/comecar/comecar2.text = ptbr['2']
		$main/Control/Control/VBoxContainer/comecar/comecar3.text = ptbr['2']
		$main/Control/Control/VBoxContainer/comecar/comecar4.text = ptbr['2']
		
		$main/Control/Control/VBoxContainer/opcoes.text = ptbr['3']
		$main/Control/Control/VBoxContainer/opcoes/opcoes2.text = ptbr['3']
		$main/Control/Control/VBoxContainer/opcoes/opcoes3.text = ptbr['3']
		$main/Control/Control/VBoxContainer/opcoes/opcoes4.text = ptbr['3']
		
		$main/Control/Control/VBoxContainer/sair.text = ptbr['4']
		$main/Control/Control/VBoxContainer/sair/sair2.text = ptbr['4']
		$main/Control/Control/VBoxContainer/sair/sair3.text = ptbr['4']
		$main/Control/Control/VBoxContainer/sair/sair4.text = ptbr['4']
		
		$main/Control/opcoes/VBoxContainer/idioma/Label.text = ptbr['5']
		$main/Control/opcoes/VBoxContainer/idioma/ptbr.text = ptbr["6"]
		$main/Control/opcoes/VBoxContainer/idioma/english.text = ptbr["7"]
	
	elif Save.data['english'] == true:
		$main/Control/Control/VBoxContainer/continuar.text = english['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_ativo.text = english['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_blue.text = english['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_red.text = english['1']
		$main/Control/Control/VBoxContainer/continuar/continuar_disabled.text = english['1']
		
		$main/Control/Control/VBoxContainer/comecar.text = english['2']
		$main/Control/Control/VBoxContainer/comecar/comecar2.text = english['2']
		$main/Control/Control/VBoxContainer/comecar/comecar3.text = english['2']
		$main/Control/Control/VBoxContainer/comecar/comecar4.text = english['2']
		
		$main/Control/Control/VBoxContainer/opcoes.text = english['3']
		$main/Control/Control/VBoxContainer/opcoes/opcoes2.text = english['3']
		$main/Control/Control/VBoxContainer/opcoes/opcoes3.text = english['3']
		$main/Control/Control/VBoxContainer/opcoes/opcoes4.text = english['3']
		
		$main/Control/Control/VBoxContainer/sair.text = english['4']
		$main/Control/Control/VBoxContainer/sair/sair2.text = english['4']
		$main/Control/Control/VBoxContainer/sair/sair3.text = english['4']
		$main/Control/Control/VBoxContainer/sair/sair4.text = english['4']
		
		$main/Control/opcoes/VBoxContainer/idioma/Label.text = english['5']
		$main/Control/opcoes/VBoxContainer/idioma/ptbr.text = english["6"]
		$main/Control/opcoes/VBoxContainer/idioma/english.text = english["7"]


func _on_comecar_pressed():
	$AnimationPlayer.play_backwards("intro")
	yield(get_tree().create_timer(2.0), "timeout")
	get_tree().change_scene("res://Cutscens/Cutscene1.tscn")


func _on_opcoes4_pressed():
	$main/Control/opcoes.visible = true
	$main/Control/esmaecer.visible = true


func _on_fechar_esmaecer_pressed():
	$main/Control/opcoes.visible = false
	$main/Control/esmaecer.visible = false


func _on_ptbr_pressed():
	Save.data['ptbr'] = true
	Save.data['english'] = false
	Save._saveData()
	get_tree().change_scene("res://Cenas/CyberEscape.tscn")


func _on_english_pressed():
	Save.data['ptbr'] = false
	Save.data['english'] = true
	Save._saveData()
	get_tree().change_scene("res://Cenas/CyberEscape.tscn")
