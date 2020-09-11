//Escribir aqui los objetos

object galvan {
	var sueldo = 15000
	
	method sueldo () {
		return sueldo
	}
	
	method sueldo (nuevoSueldo){
		sueldo = nuevoSueldo
	}
	
	method cobrar () {
		
	}
}

object baigorria {
	var empanadasVendidas = 0
	var totalCobrado = 0
	
	method totalCobrado () {
		return totalCobrado
	}
	
	method sueldo () {
		return empanadasVendidas * 15
	}
	
	method vender (cantidadDeEmpanadas) {
		empanadasVendidas += cantidadDeEmpanadas
	}
	
	method cobrar () {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }
}

object gimenez {
	var fondoParaSueldos = 300000
	
	method fondo () {
		return fondoParaSueldos
	}
	
	method pagarSueldo (unEmpleado) {
		fondoParaSueldos -= unEmpleado.sueldo()
		unEmpleado.cobrar()
	}
}