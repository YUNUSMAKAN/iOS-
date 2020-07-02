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

//print(copyOfClassJames.age)
//print(copyOfStructJames.age)


copyOfStructJames.age = 52
copyOfClassJames.age = 52


//print(copyOfClassJames.age)
//print(copyOfStructJames.age)

//print(classJames.age) //Reference type: beklemedigimiz sonucu veren.
//print(structJames.age) // Value type : bekledigimiz sonucu veren.

//Reference Types -> Class
//Copy -> Same object new reference -> 1 object + 2 Reference


//Value Types -> Struct
//Copy -> new object -> 2 objects


// FUNCTION vs MUTATING FUNCTION

//print(classJames.age)
classJames.happyBirthday()
//print(classJames.age)

//print(structJames.age)
structJames.happyBirthday()
//print(structJames.age)


// TUPLE

// Tuple : birden fazla veriyi ayni koleksiyon icinde gostermemize yarar.
let myTuple = (1,3) //Yapisi 0.index = 1 , 1.index = 3
print(myTuple.0) //=1
print(myTuple.1)
var myTuple2 = (1,4,5)
myTuple2.2 = 10

print(myTuple2.2)

let myTuple3 = ("Yunus", 100)

let myTuple4 = (10,[10,20,40])

print(myTuple4.1[1]) //=20

let predefindTuple : (String, String) //Tuple String olmasi gerektigini oncedende belirtebiliriz.

predefindTuple.0 = "YUNUS"
predefindTuple.1 = "MAKAN"

print(predefindTuple)

let newTuple = (name:"James", metalice: true) // isim vererekde tuple da olusturabiliriz.
print(newTuple.name)
print(newTuple.metalice)


// GUARD LET vs IF LET
// Guard daha cok koruyucu yapiya sahip, if eger bu olursa bunu yap demek olur.
// Guard -> Negative && Confident
// if -> Positive

let myNumber = "5"

func convertToIntegerGuard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput) else {
           return 0 //Burada bastan yapamadiginda yapmasi gerektgini belirtiyoruz.
    }
    return myInteger
}

func convertToIntegerIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput) {
        
        return myInteger
    }else {
        return 0
    }
    
}
//Else kullanacagimiz yerlerde guard let kullanmak daha mantikli olur.

print(convertToIntegerIf(stringInput: myNumber))
print(convertToIntegerGuard(stringInput: myNumber))


// SWITCH

let myNum = 11

//REMAINDER : Kalan bulma islemi

let myRemainder = myNum % 6

print(myRemainder)
/*
if myRemainder == 1 {
    print("it's 1")
}else if myRemainder == 2 {
    print("it's 2 ")
}else if myRemainder == 3 {
    print("it's 3")
}*/

switch myRemainder {
case 1...3 :
    print("it's 1 - 3")
case 4...7 :
    print("it's 4 - 7")
case 8 :
    print("it's 8")
default :
    print("non of the above")
    
}








