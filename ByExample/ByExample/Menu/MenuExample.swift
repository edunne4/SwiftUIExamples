//
//  MenuExample.swift
//  ByExample
//
//  Created by Joash Tubaga on 8/9/23.
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/menu
/// A control that presents a list of options when triggered.
///
/// In SwiftUI, a `Menu` provides a way to display a list of choices. The trigger
/// can be any SwiftUI view, such as a button or an icon. Once tapped, the `Menu`
/// presents a dropdown list of selectable items. It's especially useful when you
/// want to provide multiple actions or choices without cluttering the user interface.
///
/// In this example, we have a menu triggered by a button with a "Actions" label.
/// The menu provides three different actions for the user to choose from.

struct MenuExample: View {
    /// The main view content which is rendered and displayed on the screen
    var body: some View {
        /// A menu with three selectable items, displayed when the "Actions" button is tapped.
        Menu("Actions") {
            Button(action: {
                print("Option 1 selected")
            }) {
                Text("Option 1")
            }

            Button(action: {
                print("Option 2 selected")
            }) {
                Text("Option 2")
            }

            Button(action: {
                print("Option 3 selected")
            }) {
                Text("Option 3")
            }
        }
        .font(.title)
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10.0)
        .padding()
    }
}


#Preview {
    MenuExample()
}
