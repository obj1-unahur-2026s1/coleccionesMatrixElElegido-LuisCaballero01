object nave{
    const property pasajeros = []

    method cantPasajeros() = pasajeros.size()

    method pasajeroConMayorVitalidad() = pasajeros.max({p => p.vitalidad()})
    method pasajeroConMenorVitalidad() = pasajeros.min({p => p.vitalidad()})

    method estaEquilibrada() = (self.pasajeroConMayorVitalidad().vitalidad() / self.pasajeroConMenorVitalidad().vitalidad()) < 2
    method estaElElegido() = pasajeros.any({p => p.esElElegido()})
    
    method pasajerosValiosos() = pasajeros.map({p => p.vitalidad() > 5})
    method hayAlgunoAlHorno() = pasajeros.any({p => p.vitalidad() == 0})
    method todosEstanEnCondiciones() = pasajeros.all({p => p.vitalidad() > 2})
    method cantVitalidadPar() = pasajeros.count({p => p.vitalidad().even()})
    method vitalidadPromedio() = pasajeros.average({p => p.vitalidad()})
    method vidasDePasajeros() = pasajeros.map({p => p.vitalidad()})
    method ordenarPasajerosPorVitalidad() = pasajeros.sortedBy({p1, p2 => p1.vitalidad() < p2.vitalidad()})
    method pasajeroParaLimpiarBaño() = pasajeros.anyOne()
    method cantElegidos() = pasajeros.count({p => p.esElElegido()})
    method potenciaVital(){
        var potenciaVital = 1
        pasajeros.forEach({p => potenciaVital *= p.vitalidad()})
        return potenciaVital
    }

    method bajarDeLaNave(unPasajero){
        pasajeros.remove(unPasajero)
    }
    method subirALaNave(unPasajero){
        pasajeros.add(unPasajero)
    }
    method chocar(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }
    method acelerar(){
        pasajeros.filter({p => !p.esElElegido()}).forEach({p => p.saltar()})
    }
    method simulacroCombate(){
        pasajeros.forEach({
            p => p.saltar()
                 p.saltar()
                 p.saltar()
            })
    }
}
object neo{
    var energia = 100
    
    method vitalidad() = energia * 0.1
    method esElElegido() = true

    method saltar(){
        energia = energia/2
    }
}
object morfeo{
    var vitalidad = 8
    var estaCansado = false
    
    method vitalidad() = vitalidad
    method esElElegido() = false

    method saltar(){
        estaCansado= !estaCansado
        vitalidad -= 1
    }
}
object trinity{
    method vitalidad() = 0
    method esElElegido() = false
    method saltar(){}
}