//
//  GroupBoxExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

/// Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.
///
/// In iOS 15: GroupBox in SwiftUI groups views with a light background. You can add a header for titles. By default, views in GroupBox align vertically, like stacking three text views.

import SwiftUI
/// https://developer.apple.com/documentation/swiftui/groupbox
/// A stylized view, with an optional label, that visually collects a logical grouping of content.

struct GroupBoxExample: View {
    
    @State private var userAgreed = false
    
    var body: some View {
        GroupBox(label:
            Label("Terms of Use", systemImage: "building.columns")
            .padding(.vertical)
        ) {
            ScrollView(.vertical, showsIndicators: true) {
                Text(agreementText)
                    .font(.footnote)
            }
            .frame(height: 250)
            Toggle(isOn: $userAgreed) {
                Text("I agree to the above terms")
            }
        }
        .padding()
    }
}

var agreementText = """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
"""

#Preview {
    GroupBoxExample()
}
