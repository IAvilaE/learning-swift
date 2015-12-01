//: Playground - noun: a place where people can play

import UIKit

var range = 0...100

for number in range {
    // Como la tarea no está del todo bien explicada, el hecho de cumplir una condición no va a excluir la posibilidad de cumplir otra, por lo tanto un número puede llegar a imprimir múltiples frases.
    
    if number % 5 == 0 {
        print("#\(number) Bingo!!!") // Han cantado bingo.
    }
    
    if number % 2 == 0 {
        print("#\(number) par!!!") // O es par.
    } else {
        print("#\(number) impar!!!") // O impar, evidentemente.
    }
    
    if number >= 30 && number <= 40 {
        print("#\(number) Viva Swift!!!") // Flipao.
    }
}