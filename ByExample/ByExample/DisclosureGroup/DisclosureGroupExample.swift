//
//  DisclosureGroupExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/disclosuregroup
/// Disclosure Group:
/// A view that shows or hides another content view,
/// based on the state of a disclosure control.
struct DisclosureGroupExample: View {
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true
    
    
    var body: some View {
        /// Will show the disclosure group as expanded
        DisclosureGroup("Items", isExpanded: $topExpanded) {
            Toggle("Toggle 1", isOn: $toggleStates.oneIsOn)
            Toggle("Toggle 2", isOn: $toggleStates.twoIsOn)
            
            /// but by default a disclosure group is collapsed
            DisclosureGroup("Sub-items") {
                /// You can also nest a disclosure group inside a disclosure
                /// group
                Text("Sub-item 1")
            }
        }
        .padding()
    }
}

#Preview {
    DisclosureGroupExample()
}
