//
//  ShoppingListView.swift
//  103-Project-Ch6
//
//  Created by jeffrey lullen on 3/5/26.
//

import SwiftUI

struct ShoppingListView: View {
    
    @State var shoppingList: [String] = ["Apple", "Eggs"]
    @State var item: String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                List(shoppingList, id: \.self){ listItem in
                    Text(listItem)
                }//END List
                
                HStack{
                    TextField("Add New Item", text: $item)
                        .padding()
                    Button{
                        //code to add item to list
                        addItem()
                    } label: {
                        Image(systemName: "arrowshape.up.circle.fill")
                            .padding()
                            .font(.title)
                    }//END Button
                }//END HStack
                .padding(4)
            }// END VStack: main container
            .navigationTitle("Shopping List")
            .navigationBarTitleDisplayMode(.inline)
            
            .toolbar{
                Menu{
                    Button("Sort A -> Z"){
                        //code to sort the list
                        shoppingList.sort()
                    }
                    Button("Reverse Order"){
                        //code to reverse list
                        shoppingList = shoppingList.reversed()
                    }
                    
                } label:{
                    Image(systemName:"arrow.up.arrow.down.square")
                }// END Menu
            } // END toolbar
        } //END NavigationStack
    } // END of body
    
    func addItem(){
        
        let trimmedItem = item.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard !trimmedItem.isEmpty else { return }
        guard !shoppingList.contains(trimmedItem) else { return item = "" }
        
        shoppingList.append(trimmedItem)
        item = ""
    }
}// END of ShoppingListView

#Preview {
    ShoppingListView()
}


/*
 guard condition else {
            statements to execute if the condition is false
            must exit the current scope(return, break, continue
 }
 code execution continues here if condition is true
 */
