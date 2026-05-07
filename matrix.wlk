object nave{
    const property pasajeros = [neo, morfeo]

    method cantPasajeros() = pasajeros.size()

    method pasajeroConMayorVitalidad() = pasajeros.find({p => p.vitalidad() == self.mayorVidaEnNave()})
    method pasajeroConMenorVitalidad() = pasajeros.find({p => p.vitalidad() == self.menorVidaEnNave()})
    method vidasDePasajeros() = pasajeros.map({p => p.vitalidad()})
    method mayorVidaEnNave() = self.vidasDePasajeros().max()
    method menorVidaEnNave() = self.vidasDePasajeros().min()
    
    method estaEquilibrada() = (self.pasajeroConMayorVitalidad().vitalidad() / self.pasajeroConMenorVitalidad().vitalidad()) < 2
    method estaElElegido() = pasajeros.any({p => p.esElElegido()})
    
    method bajarDeLaNave(unPasajero){
        pasajeros.remove(unPasajero)
    }
    method subirALaNave(unPasajero){
        pasajeros.add(unPasajero)
    }
    method chocar(){
        pasajeros.forEach({p => p.saltar()})//no saltan.
        pasajeros.clear()
    }
    method acelerar(){
        pasajeros.filter({p => !p.esElElegido()}).forEach({p => p.saltar()})
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
    method saltar(){return}
}