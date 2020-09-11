//Escribir aqui los objetos

object galvan {
	var sueldo = 15000
	var deuda = 0
	var dinero = 0
	
	method deuda () {
		return deuda
	}
	
	method dinero () {
		return dinero
	}
	
	method sueldo () {
		return sueldo
	}
	
	method sueldo (nuevoSueldo){
		sueldo = nuevoSueldo
	}
	
	method cobrar () {
		const dineroActual = dinero + sueldo
        dinero = 0.max(dineroActual - deuda)
        deuda = 0.max(deuda - dineroActual)
	}
	
	method gastar(cuanto) {
        const deudaActual = deuda + cuanto
        deuda = 0.max(deudaActual - dinero)
        dinero = 0.max(dinero - deudaActual)
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