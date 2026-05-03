import mensajeros.*
import paquetes.*


object mensajeria {
  const mensajeros = []

  method contratarMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }

  method despedirMensajero(unMensajero) {
    mensajeros.remove(unMensajero)
  }

  method despedirTodosLosMensajeros() {
    mensajeros.clear()
  }

  method esGrande() {
    return mensajeros.size() > 2
  } 

  method elPrimerEmpleadoPuedeEntregar(unPaquete) {
    return unPaquete.puedeSerEntregado(self.primerEmpleado())
  } 

  method primerEmpleado() {
    return mensajeros.first()
  } 

method pesoUltimoEmpleado() {
    return self.ultimoEmpleado().pesoTotal()
} 
  
  method ultimoEmpleado() {
    return mensajeros.last()
  } 

  method pesoTotalDeLosMensajeros() {
    return mensajeros.sum({m => m.pesoTotal()})
  } 
  
  method alMenosUnMensajeroPuedeEnregar(unPaquete) {
    mensajeros.any({m => unPaquete.puedeSerEntregado(m)})
  } 
}