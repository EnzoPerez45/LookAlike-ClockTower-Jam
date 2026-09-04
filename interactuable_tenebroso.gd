
class_name InteractuableTenebroso
extends Interactuable

@export var incremento_estres: float = 20.0

# Sobrescribimos el comportamiento específico
func esInteractuado(personaje: Personaje = null) -> void:
	gameManager.aumentar_estres(incremento_estres)
	gameManager.mostrarDialogo(mensaje)
