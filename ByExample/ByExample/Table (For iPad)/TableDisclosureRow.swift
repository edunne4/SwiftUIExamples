//
//  TableDisclosureRow.swift
//  ByExample
//
//  See LICENSE File for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved
//

import SwiftUI

struct TableDisclosureRow: View {
    let currencyStyle = Decimal.FormatStyle.Currency(code: "USD")
    
    /// These are the prices of the purchases we had
    /// and we'll show this in breakdown using a DisclosureTableRow
    let prices = [
        Purchase(price: 25),
        Purchase(price: 50),
        Purchase(price: 75)
    ]
    /// We'll also have a `totalPrice` property which will sum the purchases
    /// and we'll use this value in the collapsed disclosure for summary
    @State private var totalPrice: Decimal = 0
    
    
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
            DisclosureTableRow(Purchase(price: totalPrice)) {
                ForEach(prices) { price in
                    TableRow(price)
                }
            }
        }
        .onAppear {
            // Here we'll sum the prices
            totalPrice = prices
                // by getting all the price (converting it to decimal array)
                .map { $0.price }
                // then summing it making it a single decimal value
                .reduce(0, { $0 + $1 })
        }
    }
}

#Preview {
    TableDisclosureRow()
}
