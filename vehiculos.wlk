
object bicicleta {
  method peso() {
    return 5
  } 
}

object camion {
var cantAcoplados = 1
  method peso() {
    return cantAcoplados * 500
  }

    method agregarAcoplados(nuevaCantidad) {
      cantAcoplados = nuevaCantidad
    }
}