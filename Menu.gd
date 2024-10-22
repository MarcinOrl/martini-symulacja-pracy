extends Control


onready var gameVersionLabel = $TextureRect/GameVersionLabel

var gameVersion = "Version: 1.0"


func _ready():
	gameVersionLabel.text = gameVersion


func _on_Play_pressed():
	var mainScene = preload("res://main.tscn")
	get_tree().change_scene_to(mainScene)


func _on_Exit_pressed():
	get_tree().quit()


func _on_Settings_pressed():
	print("In development.")
