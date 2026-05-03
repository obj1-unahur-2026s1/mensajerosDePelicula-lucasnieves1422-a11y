import destinos.*
import paquetes.*
import vehiculos.*

object roberto {
    var property vehiculo = bicicleta
    var peso = 90
    
    method pesoTotal() {
    return vehiculo.peso() + peso
    } 
    method puedeLlamar() {
     return false
    } 

    method cambiarPeso(nuevoPeso) {
      peso = nuevoPeso
    }
    
}

object chuckNorris {
    
    method peso() {
        return 80
    } 

    method puedeLlamar() {
        return true
    } 
    
}

object neo {

    var tieneCredito = true
    method peso() {
        return 0
    } 

    method puedeLlamar() {
        return tieneCredito
    } 

    method cargarCredito() {
      tieneCredito = true
    }

    method agotarCredito() {
      tieneCredito = false
    }


    
}

