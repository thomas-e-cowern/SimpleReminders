//
//  SidebarView.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import SwiftUI

struct SidebarView: View {
    
    @Environment(\.managedObjectContext) var context: NSManagedObjectContext
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack (alignment: .leading) {
            Text("Reminders Count")
            
            Spacer()
            
            ForEach(1...5, id: \.self) { item in
                Text("Reminder \(item)")
            }
            
            Spacer()
            
            Button {
                isPresented = true
            } label: {
                HStack {
                    Image(systemName: "plus.circle")
                    Text("Add List")
                }
            }
            .buttonStyle(.plain)
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.bottom, 8)
        .padding(.top, 8)
        .sheet(isPresented: $isPresented) {
            //dismiss
        } content: {
            AddNewListView(viewModel: AddNewListViewModel(context: context))
        }

    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
