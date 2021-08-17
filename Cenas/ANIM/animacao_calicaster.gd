extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	yield(get_tree().create_timer(0.5), "timeout")
	$ColorRect/Control/AnimationPlayer.play("LOGO")
	$ColorRect/Control.visible = true
	
	yield(get_tree().create_timer(3.4), "timeout")
	get_tree().change_scene("res://Cenas/CyberEscape.tscn")
