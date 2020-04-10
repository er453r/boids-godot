extends RigidBody

class_name Boid

var elapsed:float = 0

func _ready():
	pass

func _process(delta):
	if gravity_scale > 1e-9:
		gravity_scale *= 0.9
	elif gravity_scale != 0:
		gravity_scale = 0
		print("frozen")
		
		var direction:Vector3 = to_global($Thruster.translation).direction_to(to_global($Body.translation))
				
		print(direction)
		
		apply_impulse($Thruster.translation, direction * 5)
	
