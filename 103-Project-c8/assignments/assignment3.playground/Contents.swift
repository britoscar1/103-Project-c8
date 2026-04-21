import UIKit

class Student {
    var name: String
    var age: Int
    var grades: [Int]
    
    init(name: String, age: Int, grades: [Int]) {
        self.name = name
        self.age = age
        self.grades = grades
    }
    
    func averageGrade() -> Double {
        var suma = 0
        for grade in grades {
            suma = suma + grade
        }
        return Double(suma) / Double(grades.count)
    }
    
    func isPassing() -> Bool {
        return averageGrade() >= 60
    }
}

var students: [Student] = [
    Student(name: "Alice", age: 20, grades: [85, 90, 78]),
    Student(name: "Bob", age: 21, grades: [92, 88, 95]),
    Student(name: "Charlie", age: 19, grades: [70, 65, 75])
]

for student in students {
    let average = student.averageGrade()
    let status = student.isPassing() ? "Passing" : "Failing"
    print("Student: \(student.name) Average: \(String(format: "%.2f", average)) Status: \(status)")
}

var totalSum = 0.0
for student in students {
    totalSum = totalSum + student.averageGrade()
}
let courseAverage = totalSum / Double(students.count)
print("Course Average: \(String(format: "%.2f", courseAverage))")

var topStudent = students[0]
var topAverage = students[0].averageGrade()

for student in students {
    let avg = student.averageGrade()
    if avg > topAverage {
        topAverage = avg
        topStudent = student
    }
}

print("Top Student: \(topStudent.name) Average: \(String(format: "%.2f", topAverage))")
