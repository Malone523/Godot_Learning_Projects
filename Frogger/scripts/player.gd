extends CharacterBody2D

var direction: Vector2
var speed: int  = 100

func _physics_process(_delta: float) -> void:
	direction = Input.get_vector("left","right","up","down")
	velocity = direction * speed
	animation()
	move_and_slide()

func animation() -> void:
	if direction:
		$AnimatedSprite2D.flip_h = direction.x > 0
		if direction.x != 0:
			$AnimatedSprite2D.animation = "left"
		else:
			$AnimatedSprite2D.animation = "down" if direction.y > 0 else "up"
	else:
		$AnimatedSprite2D.frame = 0
