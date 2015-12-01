//
//  Datos.swift
//  Hamburguesas
//
//  Created by Igor on 1/12/15.
//  Copyright © 2015 IAvilaE. All rights reserved.
//

import Foundation

class ColeccionDePaises {
    let paises = ["España", "Portugal", "Francia", "Italia", "Alemania", "Dinamarca", "Holanda", "Inglaterra", "Belgica", "Finlandia", "Rusia", "Estonia", "Letonia", "Lituania", "Croacia", "Suiza", "Austria", "Grecia", "Ucrania", "Suecia"]
    
    func obtenPais() -> String {
        return paises[Int(arc4random()) % paises.count]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas = ["Hamburguesa normal", "Hamburguesa con queso", "Hamburguesa con bacon", "Hamburguesa con queso y bacon", "Hamburguesa con queso, bacon y huevo", "Cuarto de libra", "Hamburguesa doble", "Hamburguesa doble con queso", "Hamburguesa doble con bacon", "Hamburguesa doble con queso y bacon", "Hamburguesa doble con queso, bacon y huevo", "Hamburguesa especial", "Hamburguesa doble especial", "Una puta hamburguesa más", "No entiendo por qué 20 hamburguesas... pero esta es otra", "Hamburguesa para fulano", "Hamburguesa para mengano", "Hamburguesa al estilo hamburguesil", "Hamburguesa sin más", "La última puta hamburguesa"]
    
    func obtenHamburguesa() -> String {
        return hamburguesas[Int(arc4random()) % hamburguesas.count]
    }
}