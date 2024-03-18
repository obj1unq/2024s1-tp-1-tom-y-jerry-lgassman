object zapatos {
	method velocidad() {
		return 0
	}
}

object zapatillas {
	method velocidad() {
		return 10
	}
}

object patines {
	var limpio = true
	
	method velocidad() {
		return if (limpio) 20 else 15
	}
	
	method limpiar() {
		limpio = true
	}
	method ensuciar() {
		limpio = false
	}
	
}

object tom {
	
	var energia = 50
	var calzado = zapatos
	
	method energia() {
		return energia
	}
	
	method calzado (_calzado) {
		calzado = _calzado
	}
	
	method energiaAlComer(raton) {
		return 12 + raton.peso()
	}
	
	method comer(raton) {
		energia = energia + self.energiaAlComer(raton)
	}
	
	method energiaAlCorrer(distancia) {
		return distancia / 2
	}
	
	method correr(distancia) {
		energia = energia - self.energiaAlCorrer(distancia)
	}
	
	method velocidadMaxima() {
		return 5 + energia / 10 + calzado.velocidad()	
	}
	
	method puedeComer(distancia) {
		return self.energiaAlCorrer(distancia) < energia 
	}
	
	method convieneComer(raton, distancia){
		return self.energiaAlCorrer(distancia) < self.energiaAlComer(raton)	
	}
	
	method quiereComer(raton, distancia) {
		return self.puedeComer(distancia) and
				self.convieneComer(raton, distancia)
	}
}

object jerry {
	
	var edad = 2
	
	method peso() {
		return edad * 20
	}
	
	method cumplirAnios() {
		edad = edad + 1
	}
	
	method edad(_edad) {
		edad = _edad
	}
	
	method edad() {
		return edad
	}
}

object nibbles {
		
	method peso() {
		return 35
	}	
}