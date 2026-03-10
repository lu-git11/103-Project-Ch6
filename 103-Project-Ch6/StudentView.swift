//
//  StudentView.swift
//  103-Project-Ch6
//
//  Created by jeffrey lullen on 3/6/26.
//

import SwiftUI

struct StudentView: View {
    
    @State private var students: [String:Int] = ["Jon":80,"Ava":90,"Sam":70,"Lila":85,"Max":95,"Mia":78]
    @State private var newStudent: String = ""
    @State private var newGrade: String = ""
    @State private var sortAscending: Bool = false
    
    private var sortedStudents: [(key: String, value: Int)]{
        Array(students).sorted {
            sortAscending ? $0.value < $1.value : $0.value > $1.value
        }
    }
    
    private var averageGrades: String {
        let grades = Array(students.values)
        guard !grades.isEmpty else { return "N/A" }
        let avg = Double(grades.reduce(0, +)) / Double(grades.count)
        return String(format: "%.1f", avg)
    }
    
    var body: some View {
            NavigationStack {
                VStack(spacing: 8){
                    Text("Student Grades")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                        .foregroundStyle(.blue)
                        .padding()
                    
                    Text("Average Grade: \(averageGrades)")
                        .foregroundStyle(.secondary)
                        .fontWeight(.bold)

                    List(sortedStudents, id: \.key){ student in
                        Text("\(student.key)  -  \(student.value)")
                    }
                    .listStyle(.plain)
                    .frame(minHeight: 140)
                            
                    HStack(spacing: 12) {
                        TextField("Student Name", text: $newStudent)
                            .font(.callout)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 15)     // controls height
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                            )
                        
                        TextField("Grade", text: $newGrade)
                            .font(.callout)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 15)     // controls height
                            .background(
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                            )
                        
                        
                        Button {
                            if let grade = Int(newGrade.trimmingCharacters(in: .whitespaces)),
                               !newStudent.isEmpty {
                                students[newStudent] = grade
                                newStudent = ""
                                newGrade = ""
                            }
                        } label: {
                            Image(systemName: "plus.circle.fill")
                                
                                .font(.system(size: 18, weight: .bold))
                                .foregroundStyle(.white)
                                .frame(width: 50, height: 50)
                                .background(Circle().fill(Color.blue))
                                .shadow(color: .black.opacity(0.15), radius: 4, x: 0, y: 2)
                        }//label
                        .padding(.vertical, 20)
                    }//Hstack
                    .padding(.horizontal, 16)
                    .padding(.top, 8)
                }//vstack1
                .navigationTitle("GradeBook")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    Button{
                        sortAscending.toggle()
                    } label:{
                        Image(systemName: "arrow.up.arrow.down.circle")
                            .foregroundStyle(.blue)
                            .font(.system(size: 20, weight: .semibold))
                            .padding(0)
                    }//label
                }//toolbar
                .toolbarBackground(.hidden, for: .navigationBar)
                .background(Color.white)
                .cornerRadius(16)
                .padding(.horizontal, 26)
                .padding(.top, 8)
                .background(Color.gray.opacity(0.15))
                
            }//navigation
            .background(Color.gray.opacity(0.15))
    }//body
}//view

#Preview {
    StudentView()
}
