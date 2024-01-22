//
//  PopoverExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/popover
/// A presentation style that displays content in a floating view anchored to another view or rectangle.
///
/// In SwiftUI, the `Popover` offers a means to present temporary modal content anchored to an
/// element or specific screen position. It's particularly useful on iPad and macOS interfaces
/// where you wish to offer additional contextual information or options without taking up
/// the full screen or navigating away from the current context.
///
/// In the following example, a `Button` is used to trigger the display of a `Popover`.
/// When the button is tapped, a simple `Text` view is shown inside the popover, presenting
/// a message to the user.

struct PopoverExample: View {
    /// A bindable property to manage the presentation state of the popover
    @State private var isPopoverPresented: Bool = false

    /// The main view content which is rendered and displayed on the screen
    var body: some View {
        /// A button that triggers the popover's presentation
        Button("Show Popover") {
            isPopoverPresented.toggle()
        }
        .popover(isPresented: $isPopoverPresented) {
            /// The content inside the popover
            Text("Hello from the Popover!")
                .padding()
        }
    }
}


#Preview {
    PopoverExample()
}
