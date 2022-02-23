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
            Text("Reminder List")
            Text("Actual Reminders")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
