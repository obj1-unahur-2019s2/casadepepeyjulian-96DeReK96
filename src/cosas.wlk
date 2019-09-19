object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object unKiloDeMilanesaRebosada {
	var property precio = 360
	method cambiarPrecio(nPrecio) {
		precio = nPrecio
	}
}

object unaBotellaDeSalsaDeTomate {
	var property precio = 90
	method cambiarPrecio(nPrecio) {
		precio = nPrecio
	}
}

object unMicroondas {
	var property precio = 4200
}

object unKiloDeCebolla {
	var property precio = 25
}

object unaCompu {
	var property precioEnDolar = 500
	method precioEnPesos() {
		return precioEnDolar * dolar.cotizacion()
	}
}
object dolar {
	method cotizacion() {
		return 56
	}
}

object packComida {
	var plato
	var aderezo
	
	method agregarPlato(comida) {
		plato = comida
	}
	
	method agregarAderezo(salsa) {
		aderezo = salsa
	}
	
	method precio() {
		return plato.precio() + aderezo.precio()	
	}
	method esComida() {
		return true
	}
	method esElectrodomestico() {
		return false
	}
}

object packRegalo {
	var componentes = []
	method agregar(regalo) {
		componentes.add(regalo)
	}
	method precio() {
		return componentes.sum({cosa => cosa.precio()}) * 0.8
	}
	
	method esComida() {
		return componentes.all({cosa => cosa.esComida()})
	}
	method esElectrodomestico() {
		return componentes.any({cosa => cosa.esElectrodomestico()})
	}
}
