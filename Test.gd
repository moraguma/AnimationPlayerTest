extends Node2D


@onready var animation_player = find_child("AnimationPlayer")


func _ready():
	animation_player.play("test")
	var anim: Animation = animation_player.get_animation("test")
	
	var d = {}
	for track in range(anim.get_track_count()):
		d[track] = anim.track_get_path(track)
	
	print(d)


func test():
	print("Test")
