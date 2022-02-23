//
//  AddNewListView.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import SwiftUI

struct AddNewListView: View {
    
    @ObservedObject private var viewModel: AddNewListViewModel
    
    init(viewModel: AddNewListViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Form {
            Text("New List")
                .font(.headline)
                .padding(.bottom, 20)
            
            HStack {
                Text("Name")
                TextField("", text: $viewModel.name)
            }
        }
    }
}

struct AddNewListView_Previews: PreviewProvider {
    static var previews: some View {
        let viewContext = CoreDataManager.shared.persistentContainer.viewContext
        AddNewListView(viewModel: AddNewListViewModel(context: viewContext))
    }
}
