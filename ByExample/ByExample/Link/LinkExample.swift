//
//  LinkExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// https://developer.apple.com/documentation/swiftui/link
/// A user interface control which allows the user to trigger an open
/// URL action. This control can be used to navigate outside of the app.
///
/// To create a Link, you provide a title (or label) and a URL as the destination.
/// Here's an example of creating a link to navigate to "codewithchris.com":
struct LinkExample: View {
    var body: some View {
        /// A link that, when tapped, navigates the user to "codewithchris.com"
        Link("Go to codewithchris site",
             destination: URL(string: "https://codewithchris.com/")!)
    }
}


#Preview {
    LinkExample()
}

