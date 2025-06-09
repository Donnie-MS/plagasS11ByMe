
class Plaga {
    var property poblacion
    method trasmitenEnfermedades() = poblacion >= 10
}
class Cucarachas inherits Plaga{
    var property pesoPromedio
    method danio() = poblacion / 2
    override method trasmitenEnfermedades() = super() and (pesoPromedio >= 10)
}
class Pulgas inherits Plaga{
    method danio() = poblacion * 2
}
class Garrapatas inherits Pulgas{
}
class Mosquitos inherits Plaga{
    method danio() = poblacion
    override method trasmitenEnfermedades() = super() and (poblacion % 3 == 0)
}

