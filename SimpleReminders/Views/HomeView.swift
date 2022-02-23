//
//  HomeView.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            SidebarView()
            Text("Actual Reminders")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
