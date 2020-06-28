//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by MAKAN on 21.06.2020.
//  Copyright © 2020 YUNUS MAKAN. All rights reserved.
//

import Foundation

let classJames = MusicianClass(nameInput: "James", ageInput: 50, instrumentInput: "Guitar")

//print(classJames.age)

var structJames = MusicianStruct(name: "James", age: 50, instrument: "Guitar")

//IMMUTABLE STRUCT

//print(structJames.age)

//Struct lar immutable!

classJames.age = 51
structJames.age = 51


//print(structJames.age)


//REFERENCE vs VALUE

let copyOfClassJames = classJames

var copyOfStructJames = structJames

print(copyOfClassJames.age)
print(copyOfStructJames.age)


copyOfStructJames.age = 52
copyOfClassJames.age = 52


print(copyOfClassJames.age)
print(copyOfStructJames.age)

print(classJames.age) //Reference type: beklemedigimiz sonucu veren.
print(structJames.age) // Value type : bekledigimiz sonucu veren.

//Reference Types -> Class
//Copy -> Same object new reference -> 1 object + 2 Reference


//Value Types -> Struct
//Copy -> new object -> 2 objects


