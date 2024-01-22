//
//  TextExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

/// This code creates a VStack (a vertical stack of views) with a styled "Hello, World!" text at the top and a group of texts displaying different font weights in the body.

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/text
/// A user interface element that displays read-only text.
struct TextExample: View {
    /// SwiftUI view that comprises the body of this instance
    var body: some View {
        VStack {
            /// A "Hello, World!" text view with certain stylings
            Text("Hello, World!")
                .font(.title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10.0)
                .padding()
            
            /// A group of text views each demonstrating different font weights
            Group {
                Text("Ultralight")
                    .fontWeight(.ultraLight)
                Text("Thin")
                    .fontWeight(.thin)
                Text("Light")
                    .fontWeight(.light)
                Text("Regular")
                    .fontWeight(.regular)
                Text("Medium")
                    .fontWeight(.medium)
                Text("Semibold")
                    .fontWeight(.semibold)
                Text("Bold")
                    .fontWeight(.bold)
                Text("Heavy")
                    .fontWeight(.heavy)
                Text("Black")
                    .fontWeight(.black)
            }.font(.title)  // apply title font to all texts in the group
        }
    }
}


#Preview {
    TextExample()
}
