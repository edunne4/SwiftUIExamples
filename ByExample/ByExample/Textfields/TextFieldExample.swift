//
//  TextFieldExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/textfield
/// A user interface control that lets the user enter and edit text.
///
/// In SwiftUI, the `TextField` is an interactive view that can accept and display
/// text. It is often used in conjunction with a binding to capture and process
/// the entered text. Additionally, placeholder text can guide the user regarding
/// the expected input.
///
/// In this example, we present two `TextField` views where users can input their
/// username and password. Labels above the fields provide context, and the
/// entered data is stored in the `username` and `password` properties respectively.
///
/// `TextField` is used for the `username` while `SecureField` is used for the
/// `password` to ensure that the password characters are obscured.

struct TextFieldExample: View {
    /// Bindable properties that hold the current values for the text fields
    @State private var username: String = ""
    @State private var password: String = ""

    /// The main view content which is rendered and displayed on the screen
    var body: some View {
        /// A VStack containing labels and their respective `TextField` views.
        VStack(spacing: 20) {
            // Username Section
            Text("Enter your username")
                .font(.title2)
            TextField("Username", text: $username)
                .padding()
                .border(Color.gray, width: 2)
                .cornerRadius(5.0)
            
            // Password Section
            Text("Enter your password")
                .font(.title2)
            SecureField("Password", text: $password)  // SecureField is used for password input
                .padding()
                .border(Color.gray, width: 2)
                .cornerRadius(5.0)
        }
        .padding()
    }
}


#Preview {
    TextFieldExample()
}
