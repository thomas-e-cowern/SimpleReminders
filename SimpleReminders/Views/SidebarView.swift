//
//  SidebarView.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import SwiftUI

struct SidebarView: View {
    var body: some View {
        VStack {
            Text("Reminders Count")
            
            Spacer()
            
            ForEach(1...5, id: \.self) { item in
                Text("Reminder \(item)")
            }
            
            Spacer()
            
            Button("Add List") {
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct SidebarView_Previews: PreviewProvider {
    static var previews: some View {
        SidebarView()
    }
}
