extends Node2D

const SPEED = 60
@onready var ray_castright: RayCast2D = $RayCastright
@onready var ray_castrightleft: RayCast2D = $RayCastrightleft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var direction = 1

func _process(delta):
	if ray_castright.is_colliding():
		direction=-1
		animated_sprite_2d.flip_h=true;
	if ray_castrightleft.is_colliding():
		direction=1
		animated_sprite_2d.flip_h=false
	position.x+= direction* SPEED * delta
	
