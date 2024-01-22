//
//  ButtonExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/button
/// A control that performs an action when triggered.
///
/// In SwiftUI, a `Button` can be created by combining a label, which
/// represents the visual appearance of the button, and an action,
/// which is a closure that gets executed when the button is tapped.
///
/// The label can be a piece of text, an icon, or any combination of SwiftUI views.
/// In this example, we have a button with a "Tap Me!" label that, when pressed,
/// prints a message to the console. The button's visual appearance is
/// styled with a bold title font, blue background, white text, and rounded corners.

struct ButtonExample: View {
    /// The main view content which is rendered and displayed on the screen
    var body: some View {
        /// A button styled with a blue background and white text. When tapped,
        /// it prints "Button was tapped!" to the console.
        Button(action: {
            print("Button was tapped!")
        }) {
            Text("Tap Me!")
                .font(.title)
                .fontWeight(.bold)
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10.0)
    }
}


#Preview {
    ButtonExample()
}
