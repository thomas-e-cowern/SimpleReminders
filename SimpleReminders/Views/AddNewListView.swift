//
//  AddNewListView.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import SwiftUI

struct AddNewListView: View {
    
    // MARK:  Properties
    @ObservedObject private var viewModel: AddNewListViewModel
    
    init(viewModel: AddNewListViewModel) {
        self.viewModel = viewModel
    }
    
    // MARK:  Body
    var body: some View {
        Form {
            VStack {
             
                Text("New List")
                    .font(.headline)
                    .padding(.bottom, 20)
                
                HStack {
                    Text("Name")
                    TextField("", text: $viewModel.name)
                }
                
            } // End of VStack
        } // End of Form
        .frame(minWidth: 300)
        .padding()
    }
}

// MARK:  Preview
struct AddNewListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewContext = CoreDataManager.shared.persistentContainer.viewContext
        AddNewListView(viewModel: AddNewListViewModel(context: viewContext))
    }
}
