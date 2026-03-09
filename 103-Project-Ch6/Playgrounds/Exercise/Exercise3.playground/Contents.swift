import UIKit

class Dog {
    var name: String
    var breed: String
    var age: Int
    var owner: String
    
    init(name: String, breed: String, age: Int, owner: String){
        self.name = name
        self.age = age
        self.breed = breed
        self.owner = owner
    }
}


let dog1 = Dog(name:"Taco", breed:"mixed", age:44, owner:"Fer")

let dogsName: [String] = ["Toto", "Ben", "Jango"]

let dogs: [Dog] = [
    Dog(name: "Toto", breed:"mixed", age:7, owner:"Jon"),
    Dog(name:"Ben", breed:"dog", age:3, owner:"Fer")
]

print(dogsName[1])
print(dogs[1].name)
print(dogs[0].age)
print(dogs[1].breed)


func averageAge(dogs: [Dog]) -> Double{
    var totalAge = 0

    for dog in dogs{
        totalAge += dog.age
    }
    return Double(totalAge) / Double(dogs.count)
}

let result = averageAge(dogs: dogs)

print(result)
