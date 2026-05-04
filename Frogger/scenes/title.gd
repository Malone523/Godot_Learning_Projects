extends Control

func _ready() -> void:
	if Global.high_score != INF:
		$Label2.text = "High Score: " + str(Global.high_score)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("space"):
		get_tree().change_scene_to_file("res://scenes/game.tscn")
