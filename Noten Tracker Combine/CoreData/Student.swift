//
//  Student.swift
//  Noten Tracker Combine
//
//  Created by Daniel Pressner on 21.11.21.
//

import Foundation
import CoreData

@objc(Student)
public class Student: NSManagedObject {
    
    @NSManaged public var id: UUID?
    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var schoolYears: NSOrderedSet?
    @NSManaged public var state: State?
    @NSManaged public var defaultSchoolYear: SchoolYear?
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }
    
}

extension Student: Identifiable {}

