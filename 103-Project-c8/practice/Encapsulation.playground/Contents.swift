import UIKit

class StudentNoEncapsulation{
    var name: String
    var grade: Int
    
    init(name: String, grade: Int) {
        self.name = name
        self.grade = grade
    }
}

// 1. Create object

let student1 = StudentNoEncapsulation(name: "Oscar", grade: 100)

// 2. Access the values

print(student1.grade)

student1.grade = 2456
print(student1.grade)


class StudentEncapsulation{
    var name: String
    private var grade: Int
    
    init(name: String, grade: Int) {
        self.name = name
        self.grade = grade
    }
    
    func getGrade() -> String {
        if grade >= 90 {return "A"}
        else if grade >= 80 {return "B"}
        else {return "C or below"}
        
    }
    
    func setGrade(_ newGrade: Int) {
        if newGrade >= 0 && newGrade <= 100{
            grade = newGrade
        } else{
            print("Grade must be between 0 and 100")
        }
    }
}

let student2 = StudentEncapsulation(name: "Fernanda", grade: 80)

print(student2.getGrade())

student2.setGrade(89999)

print(student2.getGrade())

1
