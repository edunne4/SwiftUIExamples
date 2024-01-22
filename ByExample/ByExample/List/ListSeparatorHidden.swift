//
//  ListSeparatorHidden.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ListSeparatorHidden: View {
    let fruits = ["Apple", "Banana", "Coconut"]
    
    var body: some View {
        List(fruits, id: \.self) { fruit in
            Text(fruit)
                .listRowSeparator(.hidden)
        }
    }
}

#Preview {
    ListSeparatorHidden()
}
