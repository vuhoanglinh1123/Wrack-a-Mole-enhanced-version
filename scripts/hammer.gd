
#script: hammer
extends Node2D

onready var anim = get_node("AnimationPlayer")

var mouse_pos = Vector2()

func _ready():
	set_process(true)
	set_process_input(true)
	pass

func _process(delta):
	mouse_pos = get_viewport().get_mouse_pos()
	set_pos(mouse_pos)
	pass

func _input(event):
	if event.type == InputEvent.MOUSE_BUTTON and !anim.is_playing():
		anim.play("hit")
		yield( anim, "finished" )
	pass