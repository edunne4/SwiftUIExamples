//
//  TableStaticRow.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

/// Static rows can be created but you need to provide the column and rows
/// instead of relying to an array as a data source
struct TableStaticRow: View {
    let currencyStyle = Decimal.FormatStyle.Currency(code: "USD")
    
    var body: some View {
        Table(of: Purchase.self) {
            TableColumn("Base price") { purchase in
                Text(purchase.price, format: currencyStyle)
            }
            TableColumn("With 15% tip") { purchase in
                Text(purchase.price * 1.15, format: currencyStyle)
            }
            TableColumn("With 20% tip") { purchase in
                Text(purchase.price * 1.2, format: currencyStyle)
            }
            TableColumn("With 25% tip") { purchase in
                Text(purchase.price * 1.25, format: currencyStyle)
            }
        } rows: {
            TableRow(Purchase(price: 20))
            TableRow(Purchase(price: 50))
            TableRow(Purchase(price: 75))
        }
    }
}

/// Model must conform to Identifiable so we can use it in the Table
struct Purchase: Identifiable {
    let id = UUID()
    let price: Decimal
}
    

#Preview {
    TableStaticRow()
}
