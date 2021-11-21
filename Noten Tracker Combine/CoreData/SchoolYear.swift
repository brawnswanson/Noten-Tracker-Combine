//
//  SchoolYear.swift
//  Noten Tracker Combine
//
//  Created by Daniel Pressner on 21.11.21.
//

import Foundation
import CoreData

@objc(SchoolYear)
public class SchoolYear: NSManagedObject {
    
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var subjects: NSOrderedSet?
    @NSManaged public var student: Student?
    @NSManaged public var state: State?
    @NSManaged public var isDefaultForStudent: Student?
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<SchoolYear> {
        return NSFetchRequest<SchoolYear>(entityName: "SchoolYear")
    }
}

extension SchoolYear: Identifiable {}
