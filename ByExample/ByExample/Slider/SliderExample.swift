//
//  SliderExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/slider
/// A user interface control that allows for the adjustment of a value within a bounded range.
///
/// In SwiftUI, the `Slider` presents a track with a draggable thumb, enabling users to
/// select a value within a predefined range. It often finds application in settings,
/// controls, and configurations where a specific value, such as volume or brightness,
/// needs adjustment. The `Slider` interacts directly with a binding to a source of truth,
/// ensuring the selected value gets captured and reflected in real-time.
///
/// In this example, we have a `Slider` that allows users to adjust the volume level.
/// The current volume level, represented as a percentage, is displayed above the slider
/// and is stored in the `volume` property.

struct SliderExample: View {
    /// A bindable property that holds the current value of the slider
    @State private var volume: Double = 50

    /// The main view content which is rendered and displayed on the screen
    var body: some View {
        /// A VStack containing a label and the `Slider`.
        VStack(spacing: 20) {
            /// Display the current volume as a percentage
            Text("Volume: \(Int(volume))%")
                .font(.title2)

            /// A slider allowing adjustment of the volume between 0 and 100.
            Slider(value: $volume, in: 0...100) {
                Text("Volume")
            }
            .padding()
        }
        .padding()
    }
}


#Preview {
    SliderExample()
}
