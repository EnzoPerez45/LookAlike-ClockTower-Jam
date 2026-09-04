extends ObjetoInteractuable
class_name Puerta

var estaCerrada: bool

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	estaCerrada = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func esInteractuado() -> void:
	if !estaCerrada:
		print("Esta Cerrada")
	#gameManager.cambiarEscenario()
