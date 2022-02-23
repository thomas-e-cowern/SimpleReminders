//
//  CoreDataManager.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import Foundation
import CoreData

class CoreDataManager {
    
    let persistentContainer: NSPersistentContainer
    static let shared = CoreDataManager()
    
    private init () {
        
        persistentContainer = NSPersistentContainer(name: "ReminderModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize core data: \(error)")
            }
        }
        
    }
}
