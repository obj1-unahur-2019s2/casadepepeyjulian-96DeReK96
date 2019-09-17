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
		return cosas.sum({cosa => cosa.precio()} >= 9000
	}
	method compraMasCara() {
		return cosas.filter({cosa => cosa.precio().max()})
	}
	method electrodomesticosComprados() {
		return cosas.count({cosa => cosa.esElectrodomesticos()}
	}
	method queFaltaComprar(lista) {
		return lista.filter( { quiero => not cosas.contains(quiero) })
	}
}
