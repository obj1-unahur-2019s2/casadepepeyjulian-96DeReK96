import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa) {
		cosas.add(cosa)
	}
	method cantidadDeCosasCompradas() {
		return cosas.size()
	}
	method tieneComida() {
		return cosas.any({cosa => cosa.esComida()})
	}
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio() > 5000
	}
	method esDerrochona() {
		return cosas.sum({cosa => cosa.precio()}) >= 9000
	}
	method compraMasCara() {
		return cosas.max({cosa => cosa.precio()})
	}
	method electrodomesticosComprados() {
		return cosas.filter({cosa => cosa.esElectrodomestico()})
	}
//	method queFaltaComprar(lista) {
//		return lista.filter( { quiero => not cosas.contains(quiero) })
//	}
	method gastoEnComida() {
		return cosas.filter({cosa => cosa.esComida()}).sum({ cosa => cosa.precio()})
	}
}
