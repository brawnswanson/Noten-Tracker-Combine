//
//  State.swift.swift
//  Noten Tracker Combine
//
//  Created by Daniel Pressner on 21.11.21.
//

import Foundation
import CoreData

@objc(State)
public class State: NSManagedObject {
    
    @NSManaged public var currentStudent: Student?
    @NSManaged public var currentSchoolYear: SchoolYear?
    @NSManaged public var currentSubject: Subject?
    @NSManaged public var currentGrade: Grade?
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<State> {
        return NSFetchRequest<State>(entityName: "State")
    }
}
