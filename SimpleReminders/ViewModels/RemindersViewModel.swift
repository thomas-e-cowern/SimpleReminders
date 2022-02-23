//
//  MyRemindersViewModel.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import Foundation
import CoreData
import SwiftUI

class RemindersViewModel: ObservableObject {
    
    private var fetchedResultsController: NSFetchedResultsController<ReminderList>
    private var context: NSManagedObjectContext
    
    init (context: NSManagedObjectContext) {
        
        self.context = context
        fetchedResultsController = NSFetchedResultsController(fetchRequest: ReminderList.allReminders, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
    }
    
}
