//: Playground - noun: a place where people can play

import UIKit

/**
Enumeración para guardar las posibles velocidades del coche (el mío no da saltos de velocidad así, pero si se considera algo normal...)
*/
enum Velocidades: Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    // Constructor base de la enumeración.
    init(velocidadInicial: Velocidades) {
        self = velocidadInicial
    }
}

/**
Clase Auto que permite cambios de velocidad (un poco a saltos).
*/
class Auto {
    var velocidad: Velocidades
    
    // Constructor base de la clase.
    init(velocidad: Velocidades) {
        self.velocidad = velocidad
    }
    
    /**
    Cambia el estado de velocidad al siguiente más rápido. Si está en el máximo de velocidad baja al estado anterior.
    
    - returns: (actual: Int, velocidadEnCadena: String). Valor de la nueva velocidad y el estado en un String.
    */
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var status: String?
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            status = "Velocidad baja"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            status = "Velocidad media"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            status = "Velocidad alta"
        case .VelocidadAlta:
            velocidad = .VelocidadMedia
            status = "Velocidad media"
        }
        
        return (velocidad.rawValue, status!)
    }
}

// Declarar el objeto auto.
let auto = Auto(velocidad: .Apagado)

// Empezamos a conducir el auto.
for var i = 1; i <= 20; i++ {
    // Cambiamos 20 veces la velocidad e imprimimos los valores en consola.
    let (speed, status) = auto.cambioDeVelocidad()
    
    print("\(i). \(speed), \(status)")
}
