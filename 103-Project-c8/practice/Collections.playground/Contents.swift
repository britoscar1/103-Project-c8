import UIKit

// Array

print("--ARRAY--")
print("""
These are the characteristics of an Array
1. It is an ordered collection.
2. Supports duplicated items
3. Each item has a position (index) \n
""")

// Defining an Array

//var arrayName: [Type] = [Value1, Value2, Value3, ...]

var emptyArray: [Int] = []
var gradesArray: [Int] = [100, 90, 60]

print("This is the grades Array: \(gradesArray)")

//SET
print("\n---SET---")
print("""
These are the characteristics of a Set:
1. It is unordered.
2. Duplicates are not allowed.
3. Item's don't have a position (index).

""")
// Defining a set
// var setName: Set<Type> = [Vale1, Value2,...]

var emptySet: Set<Int> = []
// var emptySet = Set<Int>()

var gradesSet: Set<Int> = [100, 90, 60, 90, 90]
print("This is de grades Set: \(gradesSet)")

// DICTIONARY

print("\n---DICTIONARY---")
print("""
These are the characteristics of a Dictionary:
1. Unordered.
2. Each key must be unique.
3. Collection of key-value pairs. \n
""")

//Defining a Dictionary
// var dictionaryName: [KeyType: ValueType] = {key1:value1, key2:value2, ...}

var emptyDictionary: [String: Int] = [:]

var gradesDictionary: [String:Int] = [
    "Fernanda" : 100,
    "Oscar" : 90,
    "Kit" : 60
]

print("This is the grades Dictionary: \(gradesDictionary)")

// MINI CHALLENGE

var students: [String] = ["Fernanda", "Oscar", "Kit", "Oscar", "Oscar", "Fernanda", "Kit"]
print("\nThis is the students Array: \(students)")

var studentsID: [String: Int] = [
    "Fernanda" : 101,
    "Oscar" : 102,
    "Kit" : 103
]
print("This is the studentsID Dictionary: \(studentsID)")

var studentsGrades: [String: Int] = [
    "Fernanda" : 100,
    "Oscar" : 90,
    "Kit" : 90
]
print("This is the studentsGrades Dictionary: \(studentsGrades)")

var courses: [String] = ["Math", "History", "Economics", "Geography", "Math2", "History2", "Economics2"]
print("This is the courses Array: \(courses)")


