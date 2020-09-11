//Escribir aqui los objetos

object galvan {
	var sueldo = 15000
	
	method sueldo () {
		return sueldo
	}
	
	method sueldo (nuevoSueldo){
		sueldo = nuevoSueldo
	}
}

object baigorria {
	var empanadasVendidas = 0
	var sueldo = 15 * empanadasVendidas
	
	method sueldo () {
		return sueldo
	}
	
	method vender (cantidadDeEmpanadas) {
		empanadasVendidas += cantidadDeEmpanadas
	}
}

object gimenez {
	var fondoParaSueldos = 300000
	
	method fondo () {
		return fondoParaSueldos
	}
	
	method pagarSueldo (unEmpleado) {
		fondoParaSueldos -= unEmpleado.sueldo()
	}
}