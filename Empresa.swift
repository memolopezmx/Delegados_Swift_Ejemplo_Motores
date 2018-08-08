//
//  Empresa.swift
//  ProtocolosYDelegados
//
//  Created by ginppian on 16/10/17.
//  Copyright © 2017 BUAP. All rights reserved.
//

import Foundation

class Motor: NSObject {

    var noSerie = ""
    
    override init() {
        super.init()
    }
    
    func arrancar(){
        print("Motor arrancando...")
    }
}

extension Motor: MotoresVWProtocol {
    
    func sexta() -> Bool {
        //...lógica
        print("Entró en sexta")
        return true
    }
    func reversa() -> Bool {
        //...lógica
        print("Entró en reversa")
        return true
    }
    func cambiar(noSerie:String) {
        self.noSerie = noSerie
        print("El nuevo no serie es: "+self.noSerie)
    }
}

class Empresa: NSObject {
    
    let mtrNew = Motor()
    
    override init() {
        super.init()
        
        let vw = VW()
        vw.myMotorVW = mtrNew
    }
}
