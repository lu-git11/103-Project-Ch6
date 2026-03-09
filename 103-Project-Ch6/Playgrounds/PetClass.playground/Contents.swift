import UIKit


class Pet {
    //attributes
    var name: String
    var breed: String
    var age: Int
    var owner: String
    
    //initializer
    init(name: String, breed: String, age:Int, owner:String){
        self.name = name
        self.breed = breed
        self.age = age
        self.owner = owner
    }
    //methods

}
//1. create a new object
let myPet = Pet(name: "Walker", breed: "Rador", age: 3, owner: "Me")
                print(myPet.name)

// 2, change value
myPet.owner = "Jenny"
print(myPet.owner)
