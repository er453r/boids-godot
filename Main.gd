extends Spatial

var count:int = 0

onready var boidScene = preload("res://Boid.tscn") as PackedScene

func add_boids(number:int) -> void:
	print("adding %s boids" % [number])
	
	for i in range(1, number):
		add_boid()

func add_boid():
	var boid:RigidBody = boidScene.instance() as RigidBody
	
	var size:float = 10.0
	
	var vec = Vector3((randf() - 0.5) * size, 0.5 * size + randf() * size, (randf() - 0.5) * size)
	
	boid.global_translate(vec)
	
	add_child(boid)

func _ready():
	add_boids(10)
	
func _process(delta):
	pass
