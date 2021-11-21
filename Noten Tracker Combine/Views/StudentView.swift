//
//  StudentView.swift
//  Noten Tracker Combine
//
//  Created by Daniel Pressner on 21.11.21.
//

import SwiftUI

struct StudentView: View {
    var body: some View {
        Form {
            Section {
                Text("School Years")
            }
            Section {
                Text("Summary of currently selected school year")
            }
        }
        .navigationTitle("Student Name")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: { Text("Edit Current Student")}) {
                    Image(systemName: "pencil")
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: {Text("List of students")}) {
                    Image(systemName: "list.dash")
                }
            }
        }
    }
}

struct StudentView_Previews: PreviewProvider {
    static var previews: some View {
        StudentView()
    }
}
