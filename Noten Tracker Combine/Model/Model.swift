//
//  Model.swift
//  Noten Tracker Combine
//
//  Created by Daniel Pressner on 21.11.21.
//

import Foundation
import CoreData
import Combine

class Model {
    
    private lazy var container: NSPersistentContainer = {
        let pContainer = NSPersistentContainer(name: "NotenTracker")
        pContainer.loadPersistentStores(completionHandler: { _, error in
            if let error = error as NSError? {
                print("Error loading persistent store, \(error), \(error.userInfo)")
            }
        })
        return pContainer
    }()
    
    lazy var context: NSManagedObjectContext = container.viewContext
    
    let currentStudentPublisher = CurrentValueSubject<Student?, Never>(nil)
    let currentSchoolYearPublisher = CurrentValueSubject<SchoolYear?, Never>(nil)
    let currentSubjectPublisher = CurrentValueSubject<Subject?, Never>(nil)
    let currentGradePublisher = CurrentValueSubject<Grade?, Never>(nil)
    
    let studentsPublisher = CurrentValueSubject<[Student], Never>([])
    let subjectsPublisher = CurrentValueSubject<[Subject], Never>([])
    let schoolYearsPublisher = CurrentValueSubject<[SchoolYear], Never>([])
    let gradesPublisher = CurrentValueSubject<[Grade], Never>([])
    
    init() {
        //TODO: init of model should check for already existing default student, or nil if none
        //TODO: init should publish a list of students if it exists, or an empty array
        //TODO: if a default student exists, check for a default school year as well to fill in school year summary
    }
    
}
