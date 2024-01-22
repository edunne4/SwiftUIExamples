//
//  AlertExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// alert(_:isPresented:presenting:actions:message:) Modifier
/// Presents an alert with a message using the given data to produce the
/// alert’s content and a string variable as a title.
///
/// https://developer.apple.com/documentation/swiftui/view/alert(_:ispresented:presenting:actions:message:)-8584l
struct AlertExample: View {
    @State private var showAlert = false
    
    var body: some View {
        /// Show an alert upon button tap
        Button("Tap me") {
            showAlert = true
        }
        /// Add the alert modifier that will trigger alert dialog
        .alert(
            "Title",
            isPresented: $showAlert
        ) {
            /// Destructive buttons should be used to signify destructive actions
            /// ie. Delete, Remove, Revert, etc
            Button(role: .destructive) {
                showAlert = false
            } label: {
                Text("Destructive")
            }

            /// Cancel button should be included by default as a way for the
            /// user to simply close the alert dialog
            Button(role: .cancel) {
                showAlert = false
            } label: {
                Text("Cancel")
            }
        } message: {
            Text("You can add a two-line message here to describe what this alert is all about")
        }
    }
}

#Preview {
    AlertExample()
}
