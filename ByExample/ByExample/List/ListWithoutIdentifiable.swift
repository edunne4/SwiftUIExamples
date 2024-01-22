//
//  ListWithoutIdentifiable.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct ListWithoutIdentifiable: View {
    /// Fruits is an array of Strings
    /// String isn't Identifiable by default
    let fruits = ["Apple", "Banana", "Coconut", "Banana"]
    
    var body: some View {
        /// So when you use an array with non-identiable items,
        /// you need to tell the list how to identify each row as unique
        /// by using the `id:` argument.
        /// `\.self` here is a keypath referring to the `fruits` array itself
        /// Meaning, `fruits` array can distinguish its items uniquely
        /// by its array index which is unique.
        /// So even when you specify a repeating value in the array, it is
        /// treated as unique and is shown in a different row.
        List(fruits, id: \.self) { fruit in
            Text(fruit)
        }
    }
}

#Preview {
    ListWithoutIdentifiable()
}
