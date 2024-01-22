//
//  PickerExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/picker
/// A user interface control that allows users to choose one value from a list.
///
/// In SwiftUI, the `Picker` provides a mechanism to select a value from a set of options.
/// It can appear in various styles, including a wheel, a segmented control, or even
/// a dropdown list, depending on the platform and the context in which it is used.
/// The `Picker` requires a binding to a source of truth, to reflect the current selection
/// and to capture user changes.
///
/// In this example, we display a `Picker` to let users select their favorite fruit from a list.
/// The currently selected fruit is shown above the picker and is stored in the `selectedFruit`
/// property.

struct PickerExample: View {
    /// A list of fruit options for the picker
    let fruits = ["Apple", "Banana", "Cherry", "Date", "Fig", "Grape", "Honeydew"]

    /// A bindable property that holds the index of the selected fruit from the list
    @State private var selectedFruitIndex: Int = 0

    /// The main view content which is rendered and displayed on the screen
    var body: some View {
        /// A VStack containing a label and the `Picker`.
        VStack(spacing: 20) {
            /// Display the currently selected fruit
            Text("Selected fruit: \(fruits[selectedFruitIndex])")
                .font(.title2)

            /// A picker bound to the `selectedFruitIndex` property.
            /// This displays and allows selection from the `fruits` list.
            Picker("Select your favorite fruit", selection: $selectedFruitIndex) {
                ForEach(0 ..< fruits.count, id: \.self) { index in
                    Text(self.fruits[index]).tag(index)
                }
            }
            .pickerStyle(.inline)
        }
        .padding()
    }
}


#Preview {
    PickerExample()
}
