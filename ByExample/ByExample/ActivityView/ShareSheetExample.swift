//
//  ShareSheetExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// ShareLink
/// A view that controls a sharing presentation.
/// https://developer.apple.com/documentation/SwiftUI/ShareLink
struct ShareSheetExample: View {
    let link = URL(string: "https://codewithchris.com/")!
    
    var body: some View {
        VStack(spacing: 12) {
            ShareLink(item: link)
            
            ShareLink("Labeled Share Link", item: link)
            
            ShareLink(item: link) {
                Label("Share Link with Label builder", systemImage: "swift")
            }
            
            ShareLink(
                item: link,
                message: Text("Additional message content when sharing")
            )
            
            ShareLink(
                item: link,
                preview: SharePreview(
                    "Share Link with Preview",
                    image: Image(systemName: "swift")
                )
            ) {
                Label("Share Link with Preview", systemImage: "swift")
            }
        }
    }
}

#Preview {
    ShareSheetExample()
}
