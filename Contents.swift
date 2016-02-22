//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum Velocidades: Int{
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init( velocidadInicial: Velocidades ){
        self = velocidadInicial
        
        
    }
    
}


class Auto {
    
    var velocidad = Velocidades(velocidadInicial: .apagado)
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() -> (actual:Int, velocidadEnCadena: String) {
        var leyenda:String
        
        switch self.velocidad{
            
        case Velocidades.apagado:
            self.velocidad = .apagado
            leyenda = "Apagado"
            self.velocidad = .velocidadBaja
            leyenda = "Velocidad Baja"
        case Velocidades.velocidadBaja:
            self.velocidad = .velocidadMedia
            leyenda = "Velocidad Media"
        case Velocidades.velocidadMedia:
            self.velocidad = .velocidadAlta
            leyenda = "Velocidad Alta"
        case Velocidades.velocidadAlta:
            self.velocidad = .velocidadMedia
            leyenda = "Velocidad Media"
            
        }
        return (self.velocidad.rawValue, leyenda)
        
        
    }
    
    
}

var vw = Auto()

for i in 1...20{
    print(vw.cambioDeVelocidad())
}





