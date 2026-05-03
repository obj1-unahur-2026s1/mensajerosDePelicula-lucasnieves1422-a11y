import destinos.*
import vehiculos.*
import mensajeros.*


object paquete {


    var property destino = brooklyn
    var estaPago = false

  method puedeSerEntregado(unMensajero) {
    return destino.dejaPasar(unMensajero)
    && estaPago
  } 

  method registrarPago() {
    estaPago = true
  }

  method rechazarPago() {
    estaPago = false
  }

  method estaPago() = estaPago
}

object paquetito {
    var property destino = brooklyn 
    method puedeSerEntregado(unMensajero) {
      return destino.dejaPasar(unMensajero)
  }

  method precio() = 0 
  method estaPago() = true 
}

object paqueton {
    const destinos = #{} // Usamos conjunto para no repetir elementos
    var importeAbonado = 0
  method precio() = destinos.size() * 100 
  method registrarPago(unValor) {
      importeAbonado = (importeAbonado + unValor).min(self.precio())
    }

    method estaPago() =  importeAbonado == self.precio()
}
