extends Node2D

#onready var player = $Player
onready var nav = $Navigation2D
onready var sprint_bar = $CanvasLayer/SprintBar

func _process(delta):
	var player = get_node_or_null("Player")
	if player:
		sprint_bar.visible = player.stamina < 5.0
		sprint_bar.value = (player.stamina / 5.0) * 100

func _on_Timer_timeout():
	var player = get_node_or_null( "Player" )
	if player:
		get_tree().call_group("enemy", 'get_target_path', player.global_position )
