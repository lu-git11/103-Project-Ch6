import UIKit

class Student {
    var name: String
    var age: Int
    var grades: [Int]
    
    init(name: String, age:Int, grades:[Int]){
        self.name = name
        self.age = age
        self.grades = grades
    }
    
    func averageGrade() -> Double{
        guard !grades.isEmpty else { return 0.0 }
        var total = grades.reduce(0, +)
        return Double(total) / Double(grades.count)
    }
    
    func isPassing() -> Bool {
        return averageGrade() >= 60.0
    }
}

let students = [
    Student(name: "Jon", age: 15, grades: [13,14,15]),
    Student(name: "Jim", age:25, grades: [66,67,68]),
    Student(name: "Jen", age:67, grades:[89,90,90])
]

var courseTotal = 0.0

for student in students {
    let avg = student.averageGrade()
    let status = student.isPassing() ? "Passing" : "Failing"
    courseTotal += avg
    
    
    print("""
        Student: \(student.name)
        Average: \(String(format: "%.2f", avg))
        Status: \(status)
        
        """)
    
}

let courseAverage = courseTotal / Double(students.count)
print("Course Average: \(String(format: "%.2f", courseAverage))")

