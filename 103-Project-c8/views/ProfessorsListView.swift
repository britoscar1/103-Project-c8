//
//  ProfessorsListView.swift
//  103-Project-c8
//
//  Created by Oscar Brito on 16/04/26.
//

import SwiftUI

struct ProfessorsListView: View {
    
    @State var professors: [Professor] = [
        Professor(firstName: "Fernanda", lastName: "Murillo", phone: "1234567890"),
        Professor(firstName: "Samantha", lastName: "Jimenez", phone: "0987654321")
    ]

    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var phone: String = ""
    
    //alert
    
    @State private var showAlert: Bool = false
    @State private var showDuplicateAlert: Bool = false

    var body: some View {
        VStack {
            Text("Professors List")
                .font(.title)
                .foregroundStyle(.orange)

            List(professors, id: \.phone) { professor in
                Text("\(professor.firstName) \(professor.lastName) - \(professor.phone)")
                    .font(.headline)
            }
            VStack {
                TextField("First Name", text: $firstName)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.orange, lineWidth: 2)
                    )

                TextField("Last Name", text: $lastName)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.orange, lineWidth: 2)
                    )

                
                TextField("Phone number", text: $phone)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.orange, lineWidth: 2)
                    )

                Button("Add") {
                    guard !firstName.isEmpty, !lastName.isEmpty, !phone.isEmpty else {
                        showAlert = true
                        return
                    }
                    
                    guard !professors.contains(where: {$0.phone == phone}) else {
                        showDuplicateAlert = true
                        return
                    }
                    let newProfessor = Professor(firstName: firstName, lastName: lastName, phone: phone)
                    professors.append(newProfessor)
                    firstName = ""
                    lastName = ""
                    phone = ""
                }
                .foregroundColor(.white)
                .frame(width: 150, height: 25)
                .padding()
                .background(Color.orange)
                .font(.largeTitle)
                .cornerRadius(12)
            }
            .padding()
            
            .alert("Empty value", isPresented: $showAlert){
                Button("Ok", role: .cancel){}
            } message: {
                Text("Please fill in all fields.")
            }
            
            .alert("Duplicate professor", isPresented: $showDuplicateAlert) {
                Button("Ok", role: .cancel) {}
            } message: {
                Text("A professor with that phone number already exists.")
            }
        }
        .padding()
    }
}
#Preview {
    ProfessorsListView()
}
