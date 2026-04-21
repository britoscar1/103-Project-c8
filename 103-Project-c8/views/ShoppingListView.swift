//
//  ShoppingListView.swift
//  103-Project-c8
//
//  Created by Oscar Brito on 11/04/26.
//

import SwiftUI

struct ShoppingListView:View {
    
    // MARK: - State -
    @State private var shoppingList: [String] = ["Eggs", "Banana"]
    @State private var newItem: String = ""
    @State private var showEmptyAlert: Bool = false
    @State private var showDuplicatedAlert: Bool = false
    
    var body: some View {
        NavigationStack{
            // MARK: - Main vertical stack
            VStack{
                List(shoppingList, id: \.self){ listItem in
                    Text(listItem)
                
                }
                
                HStack{
                    TextField("Add a new shopping item...", text: $newItem)
                        .padding()
                    
                    Button{
                        addItem()
                    } label: {
                        Image(systemName: "arrowshape.up.circle.fill")
                            .padding()
                            .font(.largeTitle)
                    }
                }
            }
            .navigationTitle(Text("Shopping List"))
            .navigationBarTitleDisplayMode( .inline)
            
            .toolbar{
                Menu{
                    Button("Sort A->Z"){
                        shoppingList = shoppingList.sorted(by: <)
                    }
                    
                    Button("Reverse order"){
                        shoppingList.reverse()
                    }
                } label:{
                    Image(systemName:"arrow.up.arrow.down.circle")
                }
                
            }
            
            
            .alert("Empty item", isPresented: $showEmptyAlert){
                Button("Ok", role:.cancel){}
            } message:{
                Text("Your value should not be empty or duplicated!")
            }
            
            .alert("Duplicated item", isPresented: $showDuplicatedAlert){
                Button("Ok", role:.cancel){}
            } message:{
                Text("This item is already in your list!")
            }
        }
    }
    func addItem(){
        let trimmedItem = newItem.trimmingCharacters(in: .whitespaces)
         
        // 1. Must not be empty
        guard !trimmedItem.isEmpty else {
            showEmptyAlert = true
            return
        }
        
        // 2. Must not be duplicate
        guard !shoppingList.contains(trimmedItem) else {
            showDuplicatedAlert = true
            return
        }
        // 3. Add the item to the array
        shoppingList.append(trimmedItem)
        
        // 4. Clear the text field
        newItem = ""
    }
    
}

#Preview {
    
  ShoppingListView()
}
