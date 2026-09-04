extends Interactuable
class_name ObjetoInteractuable

var id
var usos
var idObjNecesario

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func interactuarCon(interactuable: Interactuable) -> void:
	interactuable.esInteractuadoCon(self)

func esInteractuadoCon(objInteractuable: ObjetoInteractuable) -> void:
	if verificarObjeto(objInteractuable.getId()):
		interactuarCorrectamente()
		objInteractuable.esUsado()
	self.esInteractuado()

func verificarObjeto(idObj: int) -> bool:
	return  idObj == idObjNecesario
	
func interactuarCorrectamente() -> void:
	pass
	
#testeando
