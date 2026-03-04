import UIKit

var students: [String] = ["Jon", "Jim", "Jack", "Jeff", "Joe"]
var studentGrades: [String: [Double]] = [
    "Jon": [80.11, 77.23, 92.44],
    "Jim": [72.33, 34.44, 43.55],
    "Jack": [45.34, 55.34, 65.72],
    "Jeff": [99.78, 77.32, 83.23],
    "Joe": [65.22, 60.00, 40.00]
]

for (student, grades) in studentGrades {
    let sum = grades.reduce(0, +)
    let average = sum / Double(grades.count)
    let avgFormat = String(format: "%.2f", average)
    print("""
        Student Record Summary:
        Student: \(student)
        Grades: \(grades)
        Average: \(avgFormat)
        """)
}

if let (student, avg) = (
    studentGrades
        .mapValues { grades in
            grades.reduce(0, +) / Double(grades.count)
        }
        .max(by: { $0.value < $1.value })
    ) {
    let formatted = String(format: "%.2f", avg)
        print("Highest average: \(student) with \(formatted)")
    }
