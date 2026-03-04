import UIKit

// 1. create/initialize
var fruitsArray: [String] = ["apple", "orange", "banana"]
var fruitsSet: Set<String> = ["apple", "orange", "banana"]
var fruitsDictionary: [String:String] = ["apple": "red", "orange": "orange", "banana": "yellow"]


print("--Create--")
print("Array:",fruitsArray)
print("Set:", fruitsSet)
print("Dicitonary:", fruitsDictionary)

// 2. Add Elements
// Array -> Append or Insert
fruitsArray.append("mango")

// Set -> Insert
fruitsSet.insert("mango")

// Dictionary -> assign new key-value
fruitsDictionary["green"] = "mango"

print("--ADD--")
print("Array:", fruitsArray)
print("Set:", fruitsSet)
print("Dictionary:", fruitsDictionary)


// 3. Remove

print("--Remove--")
//Array -> remove by position
fruitsArray.remove(at: 1)

//Set -. remove element by name
fruitsSet.remove("banana")

//Dictionary ->
fruitsDictionary.removeValue(forKey: "yellow")

print("--Remove--")
print("Array:", fruitsArray)
print("Set:", fruitsSet)
print("Dictionary:", fruitsDictionary)

//4. search
print("Search")
print("Array contains apple?: \(fruitsArray.contains("apple"))")
print("Set contains apple?: \(fruitsSet.contains("apple"))")
print("Dictionary contains apple?: \(fruitsDictionary.keys.contains("apple"))")

//5. sorting
print("--sorting--")
print("Array sorted ascending", fruitsArray.sorted(by: >))
print("Set sorted ascending", fruitsSet.sorted())

let sortedByKey = fruitsDictionary.sorted { $0.key < $1.key }
print(sortedByKey)

// 6. Clear all
fruitsArray.removeAll()
print(fruitsArray)
fruitsSet.removeAll()
fruitsDictionary.removeAll()
