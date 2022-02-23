//
//  SimpleRemindersApp.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import SwiftUI

@main
struct SimpleRemindersApp: App {
    var body: some Scene {
        WindowGroup {
            let viewContext = CoreDataManager.shared.persistentContainer.viewContext
            HomeView().environment(\.managedObjectContext, viewContext)
        }
    }
}
