//
//  TableColumnWidth.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// Example of a table column with width adjustments
struct TableColumnWidth: View {
    /// The model should be an Identifiable, so the table could uniquely
    /// identify each row and column for the instance of the model
    @State private var people = [
        Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
        Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
        Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
        Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
    ]
    
    var body: some View {
        Table(people) {
            TableColumn("Given Name", value: \.givenName)
                .width(200)
            TableColumn("Family Name", value: \.familyName)
                .width(min: 200, max: 350)
            TableColumn("E-Mail Address", value: \.emailAddress)
        }
    }
}

#Preview {
    TableColumnWidth()
}
