extends ColorRect

@onready var myMat
@export var stats : playerVariables
# Called when the node enters the scene tree for the first time.
func _ready():
	myMat = self.material
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#var current = myMat.get_shader_parameter("mask_edge")
	
	var edge = 2.3- (pow(stats.vel.length(), .3)*0.5)
	edge = clamp(edge, .22, 1)
	
	myMat.set_shader_parameter("mask_edge", edge)
	myMat.set_shader_parameter("animation_speed", stats.vel.length()/7)
	pass