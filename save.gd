extends Node

const SAVE_DIR = "user://saves/"

var save_path = SAVE_DIR + "save.dat"

var data = {
	"ptbr": true,
	"english": false,
	"contador": 1,
}


func _save():
	var save_dict = data
	return data

func _saveData():
	var save_game = File.new()
	save_game.open("user://savegame.save", File.WRITE)
	save_game.store_line(to_json(_save()))
	save_game.close()
	
	print("Salvo!")
	
func _loadData():
	var save_game = File.new()
	if not save_game.file_exists("user://savegame.save"):
		print("Não tem arquivo para carregar!")
		return
	
	save_game.open("user://savegame.save", File.READ)
	
	var current_line = parse_json(save_game.get_line())
	
	data = current_line
	save_game.close()
