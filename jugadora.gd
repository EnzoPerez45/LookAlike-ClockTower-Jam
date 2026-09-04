extends CharacterBody2D

# Velocidad de caminata en píxeles por segundo
@export var velocidad: float = 200.0

var destino: Vector2
var moviendo: bool = false

func _ready() -> void:
	# Al iniciar, la posición de destino es donde arrancó el personaje
	destino = global_position

func _physics_process(delta: float) -> void:
	if moviendo:
		# Dirección vectorial hacia el punto cliqueado
		var direccion = (destino - global_position).normalized()
		var distancia = global_position.distance_to(destino)
		
		# Si estamos a menos de 5 píxeles del objetivo, frenamos
		if distancia < 5.0:
			velocity = Vector2.ZERO
			moviendo = false
		else:
			velocity = direccion * velocidad
			
		# Mueve el personaje respetando físicas y colisiones
		move_and_slide()

# Esta función la llamaremos desde la escena del nivel cuando el jugador haga clic
func caminar_hacia(punto: Vector2) -> void:
	destino = punto
	moviendo = true
