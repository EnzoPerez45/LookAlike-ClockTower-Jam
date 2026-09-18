extends ObjetoInteractuable
class_name Puerta

@export var estaAbierta: bool
@export var puertaIda ="res://habitacion_principal.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	acomodar()
	
	#estaAbierta = GameManager.gameEvents.get("puerta1")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

	
func esInteractuado() -> void:
	if estaAbierta:
		print("irA...")
		GameManager.cambiarEscena(puertaIda)
		queue_free()
		return
	print(mensaje)
	
