//
//  CustomLinkButton.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/link
/// A custom user interface control, which is a combination of SwiftUI's Link,
/// Image, and Text views. This creates an interactive button that allows the
/// user to navigate to "codewithchris.com". When tapped, it will trigger an open
/// URL action and direct the user to the given web address.
///

struct CustomLinkButton: View {
    /// SwiftUI view that comprises the body of this instance
    var body: some View {
        /// A custom-styled link that, when tapped, navigates the user to "codewithchris.com"
        Link(destination: URL(string: "https://codewithchris.com/")!) {
            /// The button is visually represented by an HStack containing an image (depicting a globe)
            /// and a text saying "Visit us!". Both elements have a large title font, and the whole
            HStack(spacing: 20.0) {
                Image(systemName: "globe")
                    .font(.largeTitle)
                Text("Visit us!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            /// button is styled with a blue background, white foreground, rounded corners, and some padding.
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10.0)
            .padding()
        }
    }
}


#Preview {
    CustomLinkButton()
}
