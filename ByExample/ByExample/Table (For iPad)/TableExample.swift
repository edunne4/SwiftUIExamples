//
//  TableExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/table/
/// A container that presents rows of data arranged in one or more columns,
/// optionally providing the ability to select one or more members.
struct TableExample: View {
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
            TableColumn("Family Name", value: \.familyName)
            TableColumn("E-Mail Address", value: \.emailAddress)
        }
    }
}

/// The model should be an Identifiable, so the table could uniquely
/// identify each row and column for the instance of the model
struct Person: Identifiable {
    let id = UUID()
    let givenName: String
    let familyName: String
    let emailAddress: String
    
    var fullName: String { givenName + " " + familyName }
}

#Preview {
    TableExample()
}
