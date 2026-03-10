//
//  FinalReport.swift
//  103-Project-Ch6
//
//  Created by jeffrey lullen on 3/10/26.
//

import SwiftUI

struct FinalReport: View {
    
    @State private var professorName: String = ""
    @State private var professorLast: String = ""
    @State private var professorPhone: String = ""
    
    class Professor{
        var firstName: String
        var lastName: String
        var phoneNumber: String
        
        init(firstName: String, lastName: String, phoneNumber: String){
            self.firstName = firstName
            self.lastName = lastName
            self.phoneNumber = phoneNumber
        }
    }
    
    @State private var professors: [Professor] = [
        Professor(firstName: "Jim", lastName: "Jones", phoneNumber: "1234567"),
        Professor(firstName: "Jane", lastName: "Doe", phoneNumber: "12345444"),
        Professor(firstName: "John", lastName: "Snow", phoneNumber: "1233333")
    ]
    
    var body: some View {
        VStack{
            Text("Professors")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(5)
            
            List(professors, id: \.phoneNumber){ professor in
                VStack(alignment: .leading, spacing: 5){
                    Text("\(professor.firstName) \(professor.lastName)")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Text("\(professor.phoneNumber)")
                        .font(.title3)
                }
            }
        
            VStack(spacing: 8){
                TextField("First Name", text: $professorName)
                    .font(.title3)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 40)
                    .shadow(color: .gray.opacity(0.3), radius: 2, x: 0, y: 1)
                    
                    
                TextField("Last Name", text: $professorLast)
                    .font(.title3)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 40)
                    .shadow(color: .gray.opacity(0.3), radius: 2, x: 0, y: 1)
                    
                TextField("Phone Number", text: $professorPhone)
                    .font(.title3)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 40)
                    .shadow(color: .gray.opacity(0.3), radius: 2, x: 0, y: 1)
                    
                Button {
                    professors.append(Professor(
                        firstName : professorName,
                        lastName : professorLast,
                        phoneNumber : professorPhone
                    ))
                    professorName = ""
                    professorLast = ""
                    professorPhone = ""
                } label: {
                    Text("Add")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 8)
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .background(Color(.gray).opacity(0.10))
    }
}

#Preview {
    FinalReport()
}
