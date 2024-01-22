//
//  TableSorting.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct TableSorting: View {
    @State private var people = [
        Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
        Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
        Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
        Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
    ]
    /// Specify a keypath to the column that will determine sort order
    /// By default, the sorting order is `ascending` by value
    @State private var sortOrder = [KeyPathComparator(\Person.givenName)]
    
    var body: some View {
        Table(people, sortOrder: $sortOrder) {
            TableColumn("Given Name", value: \.givenName)
            TableColumn("Family Name", value: \.familyName)
            TableColumn("E-Mail address", value: \.emailAddress)
        }
        /// When the sort order changes, it will apply the new sort value
        .onChange(of: sortOrder) { oldSortOrder, newSortOrder in
            people.sort(using: newSortOrder)
        }
    }
}

#Preview {
    TableSorting()
}
