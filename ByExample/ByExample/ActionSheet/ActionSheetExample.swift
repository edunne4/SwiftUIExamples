//
//  ActionSheetExample.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// .confirmationDialog Modifier (Action Sheet)
/// Presents a confirmation dialog using data to produce the dialog’s content
/// and a localized string key for the title.
///
/// https://developer.apple.com/documentation/swiftui/view/confirmationdialog(_:ispresented:titlevisibility:presenting:actions:)-9ibgk
struct ActionSheetExample: View {
    @State private var isSheetShown = false
    @State private var selectedColor: Color = .white
    
    var body: some View {
        VStack {
            Spacer()
            
            Button("Change Background Color") {
                isSheetShown = true
            }
            .confirmationDialog("Background Color", isPresented: $isSheetShown) {
                Button("White") {
                    selectedColor = .white
                }
                
                Button("Black") {
                    selectedColor = .black
                }
                
                Button("Gray") {
                    selectedColor = .gray
                }
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(selectedColor)
    }
}

#Preview {
    ActionSheetExample()
}
