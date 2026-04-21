import SwiftUI

struct Assignment_2: View {
    @State private var studentsGrades: [String: Double] = [
        "Alice": 95,
        "Bob": 88
    ]
    @State private var studentName: String = ""
    @State private var studentGrade: Double = 0
    @State private var isSorted: Bool = false

    var displayList: [(name: String, grade: Double)] {
        if isSorted {
            return studentsGrades.sorted { $0.key < $1.key }.map { (name: $0.key, grade: $0.value) }
        } else {
            return studentsGrades.sorted { $0.key > $1.key }.map { (name: $0.key, grade: $0.value) }
        }
    }

    var averageScore: Double {
        let grades = studentsGrades.values
        var total = 0.0
        for grade in grades {
            total += grade
        }
        return total / Double(grades.count)
    }

    func addItem() {
        let trimmedName = studentName.trimmingCharacters(in: .whitespaces)
        guard !trimmedName.isEmpty else { return }
        studentsGrades[trimmedName] = studentGrade
        studentName = ""
        studentGrade = 0
    }

    var body: some View {
        NavigationView {
            VStack {
                VStack(spacing: 4) {
                    Text("Student Grades")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                    Text("Average Grade: \(averageScore, specifier: "%.2f")")
                        .foregroundColor(.gray)
                }
                .padding()

                List(displayList, id: \.name) { student in
                    Text("\(student.name) - \(Int(student.grade))")
                }

                HStack {
                    TextField("Name", text: $studentName)
                        .padding()
                        .frame(height: 45)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(.gray.opacity(0.8), lineWidth: 1)
                        }

                    TextField("Average Grade", value: $studentGrade, format: .number)
                        .padding()
                        .frame(height: 45)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .inset(by: 0.5)
                                .stroke(.gray.opacity(0.8), lineWidth: 1)
                        }

                    Button {
                        addItem()
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .padding()
                            .font(.largeTitle)
                            .foregroundColor(.brown)
                    }
                }
                .padding()
            }
            .navigationTitle("GradeBook")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                Menu {
                    Button("Sort A -> Z") {
                        isSorted = true
                    }
                    Button("Sort Z -> A") {
                        isSorted = false
                    }
                } label: {
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .font(.title2)
                }
            }
        }
    }
}


#Preview {
    Assignment_2()
}
