//
//  ListIdentifiable.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ListIdentifiable: View {
    // Fruit is identiable
    let fruits = [
        Fruit(name: "Apple"),
        Fruit(name: "Banana"),
        Fruit(name: "Coconut")
    ]
    
    var body: some View {
        // If array given to the list is Identiable,
        // no additional setup is required
        List(fruits) { fruit in
            Text(fruit.name)
        }
    }
}

// Model
struct Fruit: Identifiable {
    let id = UUID()
    var name: String
}

#Preview {
    ListIdentifiable()
}
