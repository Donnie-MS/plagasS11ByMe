class Hogar {
    var property mugre
    var property confort
    method esBueno() = mugre <= confort / 2
}

class Huerta {
    var property productionCapacity 
    method esBueno() = productionCapacity > minimumProductionLevel
}

object minimumProductionLevel {
    var property value = 100
}

class Mascota {
    var property salud
    method esBueno() = salud > 250
}

class Barrio {
    const elementos = []
    method agregarElemento(unElemento) {
        elementos.add(unElemento)
    }
    method quitarElemento(unElemento) {
        elementos.remove(unElemento)
    }
    method esBueno() = self.cantElementosBuenos() > self.cantElementosMalos()
    method cantElementosBuenos() = self.elementosBuenos().size()
    method cantElementosMalos() = self.elementosMalos().size()
    method elementosBuenos() = elementos.filter({elemento => elemento.esBueno()})
    method elementosMalos() = elementos.filter({elemento => elemento.esBueno()})
}