//
//  AddNewListViewModel.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import Foundation
import CoreData
import SwiftUI

class AddNewListViewModel: ObservableObject {
    
    
    @Published var name: String = ""
    @Published var color: Color = .clear
    
    var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func save () {
        
        let reminderList = ReminderList(context: context)
        reminderList.name = name
        reminderList.color = NSColor(color)
        
        
        
    }
    
}
