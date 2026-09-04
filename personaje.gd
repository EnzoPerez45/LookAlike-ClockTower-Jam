class_name Personaje extends CharacterBody2D

var nombre_Personaje
const velocidad = 300.0
var destino: Vector2
var moviendo: bool = false

func _ready() -> void:
	destino = global_position
	

func _physics_process(delta: float) -> void:
	if moviendo:
		var direccion = (destino - global_position).normalized()
		var distancia = global_position.distance_to(destino)
		
		if distancia < 5.0:
			velocity = Vector2.ZERO
			moviendo = false
		else:
			velocity = direccion * velocidad
			
		move_and_slide()

func caminar_hacia(punto: Vector2) -> void:
	pass
	
func interactuarConPersonaje(personaje : Personaje) -> void: 
	personaje.esInteractuado(self)
	
func esInteractuado(personajeInteractivo : Personaje) -> void:
	pass
	
	
