//
//  MusicianClass.swift
//  AdvancedSwiftProject
//
//  Created by MAKAN on 22.06.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import Foundation

class MusicianClass {
    
    var name : String
    var age : Int
    var instrument : String
    
    init(nameInput : String, ageInput : Int, instrumentInput : String) {
        //Bu siniftan bir object olusturuldugu zaman ilk cagiralcak olan fonksiyon budur.
        self.name = nameInput
        self.age = ageInput
        self.instrument = instrumentInput
    }
    
    
    func happyBirthday(){
        self.age += 1
    }
}

