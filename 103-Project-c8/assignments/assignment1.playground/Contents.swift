import UIKit


let studentNames = ["Alice", "Bob", "Carlos", "Oscar", "Juan"]

let studentGrades: [String: [Double]] = [
    "Alice":  [85, 90, 78],
    "Bob":    [92, 88, 95],
    "Carlos": [70, 75, 80],
    "Oscar":  [98, 95, 99],
    "Juan":  [60, 72, 68]
]

print("Student Record Summary:")

var highestAverage = 0.0
var topStudent = ""

for name in studentNames {
    if let grades = studentGrades[name] {
        var total = 0.0
        for grade in grades {
            total += grade
        }
        let average = total / Double(grades.count)
        let roundedAverage = (average * 100).rounded() / 100

        print("\nStudent: \(name)")
        print("Grades: \(grades)")
        print("Average: \(roundedAverage)")

        if average > highestAverage {
            highestAverage = average
            topStudent = name
        }
    }
}

print("\nTop student:")
print("Highest average grade: \(topStudent) with \((highestAverage * 100).rounded() / 100)")
