object tom {
    var energia          = 50
    var raton_Comido     = null
    var metrosRecorridos = 0

    method energia() = energia

    method raton_Comido() = raton_Comido

    method Correr_Metros(distancia) {
        energia = energia - distancia / 2
        metrosRecorridos = metrosRecorridos + distancia
    }

    method velocidadMaxima() {
        return
            5 + energia /10
    }

    method ComerA_(raton) {
        energia = energia + 12 + raton.peso()
        raton_Comido = raton
    }

    method puedeCorrer_Metros(cantidad) {
        return
            cantidad <= energia*2
    }

    method Cazar_A_Metros(raton , metros){
        if(self.puedeCorrer_Metros(metros)) {
            self.ComerA_(raton)
        }
    }
}

object jerry {
  var edad = 2

  method CumplirAños() {
    edad = edad + 1
  }

  method peso() {
    return
        edad * 20
  }

}

object nibbles {
  
  method peso() = 35
}

object stuart {
    var peso = 30
    var estaVestido = true

    method peso() = peso

    method CambiarseDeRopa() { //Al vestirse el peso de stuart aumenta en 10 debido al peso de la ropa
        if(not estaVestido) {
            peso = peso + 10
        }
        else {
            peso = peso - 10
             }
        estaVestido = not estaVestido
    }


}