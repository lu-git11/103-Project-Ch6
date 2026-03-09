//
//  Exercise2.swift
//  103-Project-Ch6
//
//  Created by jeffrey lullen on 3/8/26.
//

import SwiftUI



struct Exercise2: View {
    
    @State private var text: String = ""
    @State private var blueText: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            Text("Characters Counter")
                .font(.largeTitle)
                .foregroundStyle(blueText ? .blue : .primary)
            
            /*
             If blueText is true(
             make text blue) else(
             Keep color the same)
             */
            
            TextField("Type a message", text: $text)
                .font(.callout)
                .frame(width:300)
                .padding(5)
                .padding(.top, 40)
                .textFieldStyle(.roundedBorder)
           
            VStack{
                Text("You typed \(text.count) characters")
                    .foregroundStyle(.secondary)
                
                Divider()
                
                Toggle(isOn: $blueText) {
                    Text("Change title to blue")
                }
                .padding()
            }
        }
        .padding()
    }
}

#Preview {
    Exercise2()
}
