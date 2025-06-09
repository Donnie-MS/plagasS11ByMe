
class Plaga {
    var property poblacion
    method trasmitenEnfermedades() = poblacion >= 10
    method atacarA(unElemento) {
        self.poblacion(poblacion + (poblacion * 0.1))
        unElemento.efectoDeAtaque(self)
    }
}
class Cucarachas inherits Plaga{
    var property pesoPromedio
    method danio() = poblacion / 2
    override method trasmitenEnfermedades() = super() and (pesoPromedio >= 10)
    override method atacarA(unElemento) {
        self.pesoPromedio(pesoPromedio + 2)
        super(unElemento)
    }
}
class Pulgas inherits Plaga{
    method danio() = poblacion * 2
}
class Garrapatas inherits Pulgas{
    override method atacarA(unElemento) {
        self.poblacion(poblacion + (poblacion * 0.1))
        super(unElemento)
    }
}
class Mosquitos inherits Plaga{
    method danio() = poblacion
    override method trasmitenEnfermedades() = super() and (poblacion % 3 == 0)
}

