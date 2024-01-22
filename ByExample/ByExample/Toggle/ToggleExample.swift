//
//  ToggleExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/toggle
/// A user interface control that offers a binary choice, such as on/off or true/false.
///
/// In SwiftUI, the `Toggle` is a switch-like UI control that allows users to toggle
/// between two states. It is commonly used for settings or preferences. The `Toggle`
/// works in tandem with a binding to a source of truth, reflecting its state and
/// allowing changes to be captured and processed.
///
/// In this example, we present a `Toggle` that lets users enable or disable a
/// dark mode setting. A label beside the toggle provides context, and the current
/// state of the setting is bound to the `isDarkMode` property.

struct ToggleExample: View {
    /// A bindable property that holds the current state of the toggle
    @State private var isDarkMode: Bool = false

    /// The main view content which is rendered and displayed on the screen
    var body: some View {
        /// A VStack containing a label and the `Toggle`.
        VStack {
            /// A toggle bound to the `isDarkMode` property, which is toggled
            /// between true and false as the user interacts with it.
            Toggle(isOn: $isDarkMode) {
                Text("Enable Dark Mode")
                    .font(.title2)
            }
            .padding()
            
            // Display of the current mode based on the toggle's state
            Text(isDarkMode ? "Dark Mode is ON" : "Dark Mode is OFF")
                .font(.headline)
        }
        .padding()
    }
}


#Preview {
    ToggleExample()
}
