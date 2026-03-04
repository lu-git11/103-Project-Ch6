import UIKit

print("--Array--")
print("""
    1. Ordered
    2. Duplicates allowed
    3. Fixed positions (index)
    """)

var emptyArray: [Int] = [] //Empty array

var gradesArray: [Double] = [66.2, 99.99, 12.12]
var namesArray: [String] = ["Jon", "Jeff", "Jim"]

print("This is the array of grades -> \(gradesArray)")
print("\(namesArray[2]) recieved a \(gradesArray[1]) on the test.")

print("--Set--")
print("""
    1. Unordered
    2. Non-positional
    3. No duplicates
    """)

var emptySet = Set<Int>()

var gradesSet: Set<Double> = [66.2, 99.99, 12.12]

print("This is the set of grades \(gradesSet)")

print("--Dictionary--")
print("""
    1. Unordered
    2. Key:Value pair
    3. Each key must be unique
    """)

var emptyDictionary: [String:Int] = [:]

var gradesDictionary: [String:Double] = ["Jim": 44.33, "Jon": 99.99, "Jeff": 66.2]

print("This is the dictionary of grades \(gradesDictionary)")


// Array
var nameArray: [String] = ["Jon", "Jeff", "Jim"]
print("This is the array of names -> \(nameArray)")

// dictionary
var uniqueId: [String:String] = ["Jim": "101", "Jon": "102", "Jeff": "202"]
print("\(uniqueId)")

// dictionary
var gradeDictionary: [String:Double] = ["Jim": 44.33, "Jon": 99.99, "Jeff": 66.2]
print("This is the dictionary of grades \(gradeDictionary)")

// array
var courses: [String] = ["math", "science","english"]
print("\(courses)")

