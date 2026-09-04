class_name PersonajeJugable extends Personaje


func _ready() -> void:
		destino = global_position
		
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var punto_destino = get_global_mouse_position()
		caminar_hacia(punto_destino)
		print("Caminando hacia la posición global: ", punto_destino)
			

func caminar_hacia(punto: Vector2) -> void:
	destino = punto
	moviendo = true
		
	
