extends ObjetoInteractuable
class_name Puerta

var estaAbierta: bool
var puertaIda ="res://personaje_jugable.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	acomodar()
	estaAbierta = false
	estaAbierta = GameManager.gameEvents.get("puerta1")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

	
func esInteractuado() -> void:
	if estaAbierta:
		print("irA...")
		GameManager.cambiarEscena(puertaIda)
		#gameManager.cambiarEscenario()
		queue_free()
		return
	print("Esta cerrada")
	
