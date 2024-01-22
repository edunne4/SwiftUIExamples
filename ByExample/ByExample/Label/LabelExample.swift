//
//  LabelExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/label
/// A user interface element that pairs a visual symbol (like an icon)
/// with some descriptive text. Typically used in lists and buttons to
/// create a cohesive representation of actions or content options.
///
/// In SwiftUI, a `Label` combines an `Image` (or any view that represents
/// an icon) and a `Text` view in a horizontal alignment by default.
/// Here's an example of creating a label with an envelope icon and "Send Message" text:

struct LabelExample: View {
    /// SwiftUI view that comprises the body of this instance
    var body: some View {
        /// A label that combines an envelope icon with the "Send Message" text
        Label("Send Message", systemImage: "envelope")
        /// Label is styled with a blue background, white foreground, rounded corners, and some padding.
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(5.0)
            .padding()
    }
}


#Preview {
    LabelExample()
}
