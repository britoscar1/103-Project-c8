import SwiftUI

struct StudentsListView: View {

    @State var students: [Student] = [
        Student(name: "Fernanda", grade: 67.99),
        Student(name: "Kit", grade: 89.95)
    ]

    @State private var name: String = ""
    @State private var grade: String = ""

    var body: some View {
        VStack {
            Text("Average Grade: ")
                .font(.title)

            List(students, id: \.name) { student in
                Text("\(student.name) - \(student.grade, specifier: "%.2f")")
            }

            HStack {
                TextField("Name", text: $name)
                    .padding()

                TextField("Grade", text: $grade)
                    .padding()

                Button("Add") {
                    guard let gradeValue = Double(grade) else { return }
                    let newStudent = Student(name: name, grade: gradeValue)
                    students.append(newStudent)
                }
                .padding()
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    StudentsListView()
}
