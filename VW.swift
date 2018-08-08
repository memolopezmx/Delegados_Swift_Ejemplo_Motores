//
//  VW.swift
//  ProtocolosYDelegados
//
//  Created by ginppian on 16/10/17.
//  Copyright © 2017 BUAP. All rights reserved.
//

import Foundation

protocol MotoresVWProtocol {
    
    func sexta() -> Bool
    func reversa() -> Bool
    func cambiar(noSerie:String)
}

class VW: NSObject {
    
    var myMotorVW: MotoresVWProtocol?
    
    override init(){
        super.init()
        
        delay(3) {
            self.calidadSexta()
            self.myMotorVW?.cambiar(noSerie: "1234Pepito")
        }
    }
    
    func calidadSexta(){
        
        if myMotorVW!.sexta() {
            print("La sexta está correcta")
        } else {
            print("Error en los parametros de calidad de la sexta")
        }
    }
    
    func delay(_ delay:Double, closure:@escaping ()->()) {
        DispatchQueue.main.asyncAfter(
            deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: closure)
    }
    
}
