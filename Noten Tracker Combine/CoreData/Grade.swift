//
//  Grade.swift
//  Noten Tracker Combine
//
//  Created by Daniel Pressner on 21.11.21.
//

import Foundation
import CoreData

@objc(Grade)
public class Grade: NSManagedObject {
    
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var value: Double
    @NSManaged public var weight: Double
    @NSManaged public var date: Date?
    @NSManaged public var subject: Subject?
    @NSManaged public var state: State?
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Grade> {
        return NSFetchRequest<Grade>(entityName: "Grade")
    }
}

extension Grade: Identifiable {}

