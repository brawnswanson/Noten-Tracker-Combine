//
//  Subject.swift
//  Noten Tracker Combine
//
//  Created by Daniel Pressner on 21.11.21.
//

import Foundation
import CoreData

@objc(Subject)
public class Subject: NSManagedObject {
    
    @NSManaged public var id: UUID?
    @NSManaged public var inAverage: Bool
    @NSManaged public var name: String?
    @NSManaged public var grades: NSOrderedSet?
    @NSManaged public var schoolYear: SchoolYear?
    @NSManaged public var state: State?
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Subject> {
        return NSFetchRequest<Subject>(entityName: "Subject")
    }
    
}

extension Subject: Identifiable {}
