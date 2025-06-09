class Hogar {
    var property mugre
    var property confort
    method esBueno() = mugre <= confort / 2
    method efectoDeAtaque(unaPlaga) {self.mugre(mugre + unaPlaga.danio())}
}
class Huerta {
    var property productionCapacity 
    method esBueno() = productionCapacity > minimumProductionLevel
    method efectoDeAtaque(unaPlaga) {
        self.productionCapacity(unaPlaga.danio() * 0.10)
        if (unaPlaga.trasmitenEnfermedades()) {
            self.productionCapacity((productionCapacity - 10).min(0))
        }
    }
}

object minimumProductionLevel {
    var property value = 100
}

class Mascota {
    var property salud
    method esBueno() = salud > 250
    method efectoDeAtaque(unaPlaga) {
        if (unaPlaga.trasmitenEnfermedades()) {
            self.salud((salud - unaPlaga.danio()).min(0))
        }
    }
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