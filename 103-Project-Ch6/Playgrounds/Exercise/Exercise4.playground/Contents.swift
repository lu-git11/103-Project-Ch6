import UIKit

var studentScores: [Int] = [85, 90, 78, 92, 88]

print(studentScores[2])

for score in studentScores {
    print(score)
}

studentScores.append(100)

studentScores.remove(at: 0)

studentScores.contains(100)

print(studentScores.sorted(by: >))

class Person{
    var name: String
    var age: Int
    var job: String
    var city: String
    
    init(name: String, age: Int, job: String, city: String){
        self.name = name
        self.age = age
        self.job = job
        self.city = city
    }
}

let person =
    Person(name: "Jon", age: 12, job: "driver", city: "Orlando")

let people: [Person] = [
    Person(name: "Jan", age: 23, job: "cook", city: "Chicago"),
    Person(name:"Jim", age: 44, job: "plumber", city:"North"),
    Person(name: "Jon", age: 12, job: "driver", city: "Orlando")
    ]
    

print(person.name)

person.age = 78
print(person.age)

for person in people{
    print(person.name)
}

print("Hello, my name is \(people[1].name) and I am \(people[1].age) years old.")

