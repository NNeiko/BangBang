extends CharacterBody2D

@export var speed = 300

@onready var animated_player = $AnimatedSprite2D

func _physics_process(_delta):
	var _direction = Input.get_vector("left", "right", "up", "down")
	velocity = _direction * speed
	
	if velocity != Vector2.ZERO:
		animated_player.play("walk")
		if _direction.x > 0:
			animated_player.flip_h = false
		elif _direction.x <0: 
			animated_player.flip_h = true
	else:
		animated_player.play("idle")
	
	move_and_slide()
