//
//  RemiderList.swift
//  SimpleReminders
//
//  Created by Thomas Cowern New on 2/23/22.
//

import Foundation
import CoreData
import AppKit

@objc (ReminderList)
class ReminderList: NSManagedObject, BaseModel {
    
    static var allReminders: NSFetchRequest<ReminderList> {
        let request: NSFetchRequest<ReminderList> = ReminderList.fetchRequest()
        request.sortDescriptors = []
        return request
    }
    
}

extension ReminderList {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ReminderList> {
        return NSFetchRequest<ReminderList>(entityName: "ReminderList")
    }

    @NSManaged public var color: NSColor?
    @NSManaged public var name: String?

}

extension ReminderList : Identifiable {

}
